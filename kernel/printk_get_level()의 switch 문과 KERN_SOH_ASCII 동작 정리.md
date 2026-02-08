## 1. 문제 상황(의문)

커널 `printk.h`에서 `printk_get_level()`을 읽는 중 다음이 궁금했다.

- `KERN_SOH_ASCII`는 무엇인가?
    
- 왜 `printk_get_level()`은 `buffer[1]`에 대해 `switch`로 분기한 뒤(겉보기에 단순 검사처럼 보임) 값을 리턴하거나 0을 리턴하는가?
    
- 왜 `buffer[0]`가 아니라 `buffer[1]`이 핵심인가?
    

---

## 2. 대상 코드

```c
static inline int printk_get_level(const char *buffer)
{
	if (buffer[0] == KERN_SOH_ASCII && buffer[1]) {
		switch (buffer[1]) {
		case '0' ... '7':
		case 'c':	/* KERN_CONT */
			return buffer[1];
		}
	}
	return 0;
}
```

---

## 3. `KERN_SOH_ASCII`의 의미

- `KERN_SOH_ASCII`는 ASCII 제어문자 **SOH(Start Of Header)** 를 의미한다.
    
- SOH는 값이 **0x01**이며, 사람이 작성하는 일반 텍스트 문자열의 첫 글자로 등장할 가능성이 거의 없다.
    
- 커널 `printk` 레거시 포맷은 문자열 앞에 다음 형태의 prefix를 붙일 수 있다.
    

```
<SOH><level-char>message...
```

즉 `buffer[0] == KERN_SOH_ASCII`는 “이 문자열은 printk가 넣는 **메타(prefix)로 시작할 수 있다**”를 식별하는 표식(sentinel)이다.

---

## 4. 왜 `buffer[1]`을 검사하는가?

레거시 prefix는 2바이트 구조다.

- `buffer[0]`: SOH(0x01) → “prefix 시작” 표식
    
- `buffer[1]`: 실제 **레벨/제어 코드 1글자**
    

따라서 레벨 정보는 `buffer[1]`에 들어있고, `buffer[0]`은 단지 “메타데이터가 뒤따른다”는 신호다.

---

## 5. switch 문의 역할(핵심: **유효성 검증**)

이 함수의 목적은 “문자열이 printk 레벨 prefix를 갖고 있다면 그 레벨 코드를 뽑아내기”다.  
하지만 **SOH 다음 글자가 무엇이든 레벨이라고 인정하면 파싱이 깨질 수 있으므로**, 허용된 코드만 통과시키는 검증이 필요하다.

- `'0' ... '7'`: syslog 우선순위 레벨 문자(0이 가장 긴급, 7이 디버그 계열)
    
- `'c'`: `KERN_CONT` (continue) → “이 출력은 새 줄이 아니라 이전 출력에 이어붙인다”는 제어 의미
    

즉 `switch (buffer[1])`는 “SOH 다음 글자가 커널이 아는 레벨/제어 코드인지”를 걸러내는 장치다.

---

## 6. 왜 “의미 없어 보이는 switch 뒤에” 그냥 리턴하는가?

겉보기엔 `switch`가 “연산”을 하지 않는 것처럼 보여도, 실제로는 다음을 수행한다.

- 레벨로 인정할 코드만 나열한다(화이트리스트).
    
- 화이트리스트에 들어오면 `return buffer[1];`
    
- 그 외는 레벨 prefix로 취급하지 않고 `return 0;`
    

즉 이 switch는 **검증 로직 자체가 목적**이며, 검증에 성공했을 때만 레벨 코드를 반환한다.

---

## 7. “buffer(포인터)를 리턴하는” 패턴과의 혼동 포인트

질문에서 “switch 후에 buffer를 리턴”하는 형태를 떠올렸다면, 그건 보통 다른 계열 함수(예: prefix를 건너뛰는 함수)에서 흔한 패턴이다.

- `printk_get_level()` : **레벨 문자**(예: `'4'`, `'c'`)를 리턴
    
- `printk_skip_level()` 류 : 레벨 prefix가 있으면 **`buffer + 2`** 같은 “본문 시작 포인터”를 리턴
    

따라서 현재 코드에서는 “포인터 리턴”이 아니라 “레벨 코드 추출”이 맞다.

---

## 8. 입력 예시로 보는 동작

### 예시 A: prefix가 있는 경우

입력: `"\0014hello"`

- `buffer[0] == SOH` 성립
    
- `buffer[1] == '4'` 는 `'0'..'7'`에 포함
    
- 결과: **`'4'` 반환**
    

### 예시 B: 일반 문자열

입력: `"hello"`

- `buffer[0] == SOH` 불성립
    
- 결과: **0 반환**
    

---

## 9. 결론

- `KERN_SOH_ASCII`는 printk 레거시 prefix의 시작을 표시하는 **SOH(0x01)** 문자다.
    
- 레벨/제어 코드는 prefix의 두 번째 바이트인 `buffer[1]`에 존재한다.
    
- `switch (buffer[1])`는 연산이 아니라 **허용된 레벨/제어 코드인지 검증하는 화이트리스트**다.
    
- 검증에 통과하면 `buffer[1]`(레벨 코드)를 반환하고, 아니면 0을 반환한다.
    
- “switch 후에 buffer(포인터)를 반환하는” 패턴은 `get_level`이 아니라 `skip_level` 류에서 흔히 나타나는 형태라 혼동하기 쉽다.
    

---
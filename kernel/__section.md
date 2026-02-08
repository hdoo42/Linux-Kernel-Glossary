
### `__section` 매크로의 역할

`__section` 매크로는 `include/linux/compiler_attributes.h` (또는 `compiler.h`)에 정의되어 있으며, GCC나 Clang 같은 컴파일러의 확장을 사용합니다.


```C
#define __section(section)              __attribute__((__section__(section)))
```

- **기능**: C 언어의 표준 기능이 아닌 컴파일러 고유의 속성(`__attribute__`)을 사용하여, 함수나 변수가 위치할 **ELF 섹션(Section)을 강제로 지정**합니다.
    
- **작동 방식**: 보통 컴파일러는 코드(`text`)와 데이터(`data`, `bss`)를 표준 섹션에 할당하지만, `__section`을 쓰면 개발자가 정의한 임의의 섹션 이름(예: `.init.text`)에 넣을 수 있습니다.
    
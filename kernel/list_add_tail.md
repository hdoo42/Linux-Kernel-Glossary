#Q /**
	 * list_add_tail - add a new entry
	 * @new: new entry to be added
	 * @head: list head to add it before
	 *
	 * Insert a new entry before the specified head.
	 * This is useful for implementing queues.
	 */
	static inline void list_add_tail(struct list_head *new, struct list_head *head)
	{
		__list_add(new, head->prev, head);
	}
	
	왜 그런거야? 큐는 넣은대로 쌓이고, 제일 먼저 넣은게 먼저 나오는 구조잖아. 
	
	그거랑 헤드 앞에 노드를 넣을 수 있는 함수가 왜 연결되는지 잘 이해가 안가. 
	
	내가 큐를 구현한다고 했을떄. push 와 pop을 구현할거야. 
	
	1. push -> head에 대해 뒤로 차례로 길게 늘어뜰여. 
	
	2. pop -> head부터 차례대로 꺼내. 
	
	이렇게 되었을때 굳이 앞에 넣는게 더 유용한지 모르겠단말이지. 


충분히 헷갈릴 수 있는 부분입니다! 질문자님께서 생각하시는 **큐(Queue)의 FIFO(First-In, First-Out) 논리는 정확합니다.** 이 혼란을 해결하려면 리눅스 커널의 `list_head`가 **"환형 이중 연결 리스트(Circular Doubly Linked List)"** 라는 점, 그리고 `head`라는 존재가 **데이터가 없는 "문지기(Sentinel Node)"** 라는 점을 이해해야 합니다.

---

### 1. 핵심 개념: 환형(Circular) 구조

리눅스 커널 리스트는 처음과 끝이 연결되어 있습니다. 여기서 `head`는 데이터가 들어있는 노드가 아니라, 리스트의 시작점과 끝점을 알려주는 **기준점**입니다.

- **`head->next`**: 리스트의 **첫 번째** 데이터 노드
    
- **`head->prev`**: 리스트의 **마지막** 데이터 노드 (꼬리)
    

따라서 **"head의 앞에(before) 넣는다"**는 말은, 환형 구조에서 **"리스트의 맨 마지막(tail) 자리에 넣는다"**는 말과 물리적으로 동일합니다.

### 2. 큐(Queue) 구현 시나리오

질문자님이 말씀하신 `push`와 `pop`을 리눅스 리스트 함수에 대입해 보겠습니다.

#### **Push (Enqueue): 맨 뒤에 추가하기**

큐에 새 데이터를 넣을 때는 항상 줄의 맨 끝에 세워야 하죠?

C

```
list_add_tail(new, &head);
```

- 내부적으로 `__list_add(new, head->prev, head)`가 호출됩니다.
    
- 즉, **기존의 마지막 노드(`head->prev`)**와 **기준점(`head`)** 사이에 새 노드를 끼워 넣는 것입니다.
    
- 결과적으로 새 노드가 새로운 `tail`이 됩니다.
    

#### **Pop (Dequeue): 맨 앞부터 꺼내기**

큐에서 데이터를 꺼낼 때는 항상 줄의 맨 앞(가장 오래된 것)부터 꺼내야 합니다.

C

```
struct list_head *first = head.next; // 가장 먼저 들어온 노드
list_del(first);                     // 리스트에서 제거
```

- `head->next`가 가리키는 노드가 바로 가장 먼저 들어온 녀석입니다.
    

---

### 3. 왜 "앞에 넣는 것"이 유용한가?

질문자님께서는 "head 뒤로 길게 늘어뜨리는 게 낫지 않나?"라고 하셨는데, 만약 `list_add` (head 바로 뒤에 추가)를 사용하면 **스택(Stack, LIFO)** 구조가 됩니다.

|**구분**|**함수**|**삽입 위치**|**논리적 구조**|
|---|---|---|---|
|**큐 (Queue)**|`list_add_tail`|`head->prev` 와 `head` 사이|**FIFO** (나중에 온 사람이 맨 뒤에 섬)|
|**스택 (Stack)**|`list_add`|`head` 와 `head->next` 사이|**LIFO** (나중에 온 사람이 새치기해서 맨 앞에 섬)|

> **정리하자면:**
> 
> 리눅스 리스트에서 `head`는 기차의 맨 앞 칸(기관차) 같은 존재입니다.
> 
> - `list_add_tail`은 기차의 **맨 마지막 칸 뒤**에 새 칸을 붙이는 것과 같고 (그래서 head의 '이전'이 됨),
>     
> - 꺼낼 때는 항상 **기관차 바로 다음 칸(`head->next`)** 부터 꺼내면 완벽한 큐가 됩니다.
>     

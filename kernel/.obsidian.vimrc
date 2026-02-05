
" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back<CR>
exmap forward obcommand app:go-forward
nmap <C-i> :forward<CR>

" Also works
exmap sp obcommand workspace:split-horizontal
exmap vs obcommand workspace:split-vertical
exmap q obcommand workspace:close
unmap <Space>
exmap toggleLeftSidebar obcommand app:toggle-left-sidebar
map <Space>e :toggleLeftSidebar<CR>

exmap zM obcommand editor:fold-all
exmap zo obcommand editor:fold-less
exmap zc obcommand editor:fold-more
exmap zR obcommand editor:unfold-all
map zM :zM<CR>
map zR :zR<CR>
map zc :zc<CR>
map zo :zo<CR>
examp addCursorBelow obcommand editor:add-cursor-below
nmap <C-j> :addCursorBelow<CR>

examp addCursorAbove obcommand editor:add-cursor-above
nmap <C-k> :addCursorAbove<CR>
" [
"     {
"         "id": "editor:save-file",
"         "name": "현재 파일 저장",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "S"
"             }
"         ]
"     },
"     {
"         "id": "editor:download-attachments",
"         "name": "현재 파일의 첨부파일 다운로드하기"
"     },
"     {
"         "id": "workspace:toggle-pin",
"         "name": "고정 켜기/끄기",
"         "icon": "lucide-pin"
"     },
"     {
"         "id": "workspace:split-vertical",
"         "name": "우측 분할",
"         "icon": "lucide-separator-vertical"
"     },
"     {
"         "id": "workspace:split-horizontal",
"         "name": "하단 분할",
"         "icon": "lucide-separator-horizontal"
"     },
"     {
"         "id": "workspace:toggle-stacked-tabs",
"         "name": "스택 탭 활성화/비활성화",
"         "icon": "lucide-layers"
"     },
"     {
"         "id": "workspace:edit-file-title",
"         "name": "파일 제목 편집",
"         "icon": "lucide-edit-3",
"         "hotkeys": [
"             {
"                 "modifiers": [],
"                 "key": "F2"
"             }
"         ]
"     },
"     {
"         "id": "workspace:copy-path",
"         "name": "파일 경로 복사",
"         "icon": "lucide-copy"
"     },
"     {
"         "id": "workspace:copy-full-path",
"         "name": "Copy current file path from system root",
"         "icon": "lucide-hard-drive"
"     },
"     {
"         "id": "workspace:copy-url",
"         "name": "Obsidian URL 복사",
"         "icon": "lucide-vault"
"     },
"     {
"         "id": "workspace:undo-close-pane",
"         "name": "탭 닫기 실행 취소",
"         "icon": "lucide-undo-2",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod",
"                     "Shift"
"                 ],
"                 "key": "T"
"             }
"         ]
"     },
"     {
"         "id": "workspace:export-pdf",
"         "name": "PDF로 내보내기"
"     },
"     {
"         "id": "workspace:open-in-new-window",
"         "name": "현재 패널을 새 창에서 열기",
"         "icon": "lucide-maximize"
"     },
"     {
"         "id": "workspace:move-to-new-window",
"         "name": "현재 패널을 새 창으로 이동",
"         "icon": "lucide-maximize"
"     },
"     {
"         "id": "workspace:next-tab",
"         "name": "다음 탭으로 이동",
"         "icon": "lucide-arrow-right",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Ctrl"
"                 ],
"                 "key": "Tab"
"             },
"             {
"                 "modifiers": [
"                     "Meta",
"                     "Shift"
"                 ],
"                 "key": "]"
"             }
"         ]
"     },
"     {
"         "id": "workspace:goto-tab-1",
"         "name": "1 번째 탭으로 이동",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "1"
"             }
"         ]
"     },
"     {
"         "id": "workspace:goto-last-tab",
"         "name": "마지막 탭으로 이동",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "9"
"             }
"         ]
"     },
"     {
"         "id": "workspace:previous-tab",
"         "name": "이전 탭으로 이동",
"         "icon": "lucide-arrow-left",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Ctrl",
"                     "Shift"
"                 ],
"                 "key": "Tab"
"             },
"             {
"                 "modifiers": [
"                     "Meta",
"                     "Shift"
"                 ],
"                 "key": "["
"             }
"         ]
"     },
"     {
"         "id": "workspace:new-tab",
"         "name": "새 탭",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "T"
"             }
"         ]
"     },
"     {
"         "id": "workspace:new-window",
"         "name": "New window"
"     },
"     {
"         "id": "workspace:close",
"         "name": "현재 탭 닫기",
"         "icon": "lucide-x",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "W"
"             }
"         ]
"     },
"     {
"         "id": "workspace:close-window",
"         "name": "창 닫기",
"         "icon": "lucide-x",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod",
"                     "Shift"
"                 ],
"                 "key": "W"
"             }
"         ]
"     },
"     {
"         "id": "workspace:close-tab-group",
"         "name": "현재 탭 그룹 닫기",
"         "icon": "lucide-x"
"     },
"     {
"         "id": "app:go-back",
"         "name": "뒤로가기",
"         "icon": "lucide-arrow-left",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod",
"                     "Alt"
"                 ],
"                 "key": "ArrowLeft"
"             }
"         ]
"     },
"     {
"         "id": "app:go-forward",
"         "name": "앞으로 가기",
"         "icon": "lucide-arrow-right",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod",
"                     "Alt"
"                 ],
"                 "key": "ArrowRight"
"             }
"         ]
"     },
"     {
"         "id": "app:open-vault",
"         "name": "다른 보관함 열기",
"         "icon": "vault"
"     },
"     {
"         "id": "theme:toggle-light-dark",
"         "name": "Toggle light/dark mode"
"     },
"     {
"         "id": "theme:switch",
"         "name": "테마 변경"
"     },
"     {
"         "id": "app:open-settings",
"         "name": "설정 열기",
"         "icon": "lucide-settings",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": ","
"             }
"         ]
"     },
"     {
"         "id": "app:show-release-notes",
"         "name": "릴리즈 노트 열기"
"     },
"     {
"         "id": "markdown:toggle-preview",
"         "name": "편집/미리보기 모드 활성화/비활성화",
"         "icon": "lucide-book-open",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "E"
"             }
"         ]
"     },
"     {
"         "id": "markdown:add-metadata-property",
"         "name": "파일 속성 추가",
"         "icon": "lucide-plus-circle",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": ";"
"             }
"         ]
"     },
"     {
"         "id": "markdown:add-alias",
"         "name": "별칭 추가",
"         "icon": "lucide-forward"
"     },
"     {
"         "id": "markdown:clear-metadata-properties",
"         "name": "파일 속성 지우기",
"         "icon": "lucide-package-x"
"     },
"     {
"         "id": "app:delete-file",
"         "name": "현재 파일 삭제",
"         "icon": "lucide-trash-2"
"     },
"     {
"         "id": "app:toggle-ribbon",
"         "name": "리본 활성화/비활성화"
"     },
"     {
"         "id": "editor:toggle-readable-line-length",
"         "name": "Toggle readable line length",
"         "icon": "lucide-ruler"
"     },
"     {
"         "id": "app:toggle-left-sidebar",
"         "name": "왼쪽 사이드바 열기/닫기"
"     },
"     {
"         "id": "app:toggle-right-sidebar",
"         "name": "오른쪽 사이드바 열기/닫기"
"     },
"     {
"         "id": "app:toggle-default-new-pane-mode",
"         "name": "새 탭 기본 모드 전환"
"     },
"     {
"         "id": "app:open-help",
"         "name": "도움말 열기",
"         "icon": "question-mark-glyph",
"         "hotkeys": [
"             {
"                 "modifiers": [],
"                 "key": "F1"
"             }
"         ]
"     },
"     {
"         "id": "app:reload",
"         "name": "저장하지 않고 앱 새로고침",
"         "icon": "lucide-rotate-ccw"
"     },
"     {
"         "id": "app:show-debug-info",
"         "name": "디버그 정보 보기"
"     },
"     {
"         "id": "app:open-sandbox-vault",
"         "name": "샌드박스 보관함 열기"
"     },
"     {
"         "id": "window:zoom-in",
"         "name": "확대"
"     },
"     {
"         "id": "window:zoom-out",
"         "name": "축소"
"     },
"     {
"         "id": "window:reset-zoom",
"         "name": "화면 비율 초기화"
"     },
"     {
"         "id": "file-explorer:new-file",
"         "name": "새 노트 생성",
"         "icon": "lucide-file-plus",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "N"
"             }
"         ]
"     },
"     {
"         "id": "file-explorer:new-file-in-current-tab",
"         "name": "현재 탭에 새 노트 생성",
"         "icon": "lucide-file-plus"
"     },
"     {
"         "id": "file-explorer:new-file-in-new-pane",
"         "name": "오른쪽에 노트 생성",
"         "icon": "lucide-file-plus",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod",
"                     "Shift"
"                 ],
"                 "key": "N"
"             }
"         ]
"     },
"     {
"         "id": "open-with-default-app:open",
"         "name": "기본 앱에서 열기",
"         "icon": "lucide-arrow-up-right"
"     },
"     {
"         "id": "file-explorer:move-file",
"         "name": "다른 폴더로 파일 이동",
"         "icon": "lucide-folder-tree"
"     },
"     {
"         "id": "file-explorer:duplicate-file",
"         "name": "현재 파일 복제하기",
"         "icon": "lucide-files"
"     },
"     {
"         "id": "open-with-default-app:show",
"         "name": "Finder에서 보기",
"         "icon": "lucide-files"
"     },
"     {
"         "id": "editor:toggle-source",
"         "name": "실시간 미리보기/원본 모드 전환",
"         "icon": "lucide-code-2"
"     },
"     {
"         "id": "editor:open-search",
"         "name": "현재 파일 내 검색",
"         "icon": "lucide-search",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "F"
"             }
"         ]
"     },
"     {
"         "id": "editor:open-search-replace",
"         "name": "현재 파일 내 검색 및 바꾸기",
"         "icon": "lucide-search",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod",
"                     "Alt"
"                 ],
"                 "key": "F"
"             }
"         ]
"     },
"     {
"         "id": "editor:focus",
"         "name": "에디터에 포커스"
"     },
"     {
"         "id": "editor:toggle-fold-properties",
"         "name": "현재 파일에서 속성 접기/펼치기",
"         "icon": "lucide-diff"
"     },
"     {
"         "id": "editor:toggle-fold",
"         "name": "현재 행에서 펴기/접기",
"         "icon": "lucide-diff",
"         "allowProperties": true
"     },
"     {
"         "id": "editor:fold-all",
"         "name": "모든 제목 및 목록 접기",
"         "icon": "lucide-minimize-2",
"         "allowPreview": true,
"         "allowProperties": true
"     },
"     {
"         "id": "editor:unfold-all",
"         "name": "모든 제목 및 목록 펼치기",
"         "icon": "lucide-maximize-2",
"         "allowPreview": true,
"         "allowProperties": true
"     },
"     {
"         "id": "editor:fold-less",
"         "name": "펼치기",
"         "icon": "lucide-unfold-vertical"
"     },
"     {
"         "id": "editor:fold-more",
"         "name": "접기",
"         "icon": "lucide-fold-vertical"
"     },
"     {
"         "id": "editor:insert-wikilink",
"         "name": "내부 링크 추가",
"         "icon": "bracket-glyph"
"     },
"     {
"         "id": "editor:insert-embed",
"         "name": "임베드 추가",
"         "icon": "lucide-sticky-note"
"     },
"     {
"         "id": "editor:insert-link",
"         "name": "링크 삽입",
"         "icon": "lucide-link",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "K"
"             }
"         ]
"     },
"     {
"         "id": "editor:insert-tag",
"         "name": "태그 추가",
"         "icon": "lucide-tag"
"     },
"     {
"         "id": "editor:set-heading",
"         "name": "제목 활성화/비활성화",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:set-heading-0",
"         "name": "제목 제거",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:set-heading-1",
"         "name": "제목 1 설정",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:set-heading-2",
"         "name": "제목 2 설정",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:set-heading-3",
"         "name": "제목 3 설정",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:set-heading-4",
"         "name": "제목 4 설정",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:set-heading-5",
"         "name": "제목 5 설정",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:set-heading-6",
"         "name": "제목 6 설정",
"         "icon": "heading-glyph"
"     },
"     {
"         "id": "editor:toggle-bold",
"         "name": "선택된 텍스트 볼드체 활성화/비활성화",
"         "icon": "lucide-bold",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "B"
"             }
"         ]
"     },
"     {
"         "id": "editor:toggle-italics",
"         "name": "선택된 텍스트 이탤릭체 활성화/비활성화",
"         "icon": "lucide-italic",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "I"
"             }
"         ]
"     },
"     {
"         "id": "editor:toggle-strikethrough",
"         "name": "취소선 활성화/비활성화",
"         "icon": "lucide-strikethrough"
"     },
"     {
"         "id": "editor:toggle-highlight",
"         "name": "선택된 텍스트 하이라이트 활성화/비활성화",
"         "icon": "lucide-highlighter"
"     },
"     {
"         "id": "editor:toggle-code",
"         "name": "코드 활성화/비활성화",
"         "icon": "lucide-code-2"
"     },
"     {
"         "id": "editor:toggle-inline-math",
"         "name": "인라인 수식 활성화/비활성화",
"         "icon": "lucide-sigma"
"     },
"     {
"         "id": "editor:toggle-blockquote",
"         "name": "블럭 인용구 활성화/비활성화",
"         "icon": "lucide-quote"
"     },
"     {
"         "id": "editor:toggle-comments",
"         "name": "주석 켜기/끄기",
"         "icon": "lucide-percent",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "/"
"             }
"         ]
"     },
"     {
"         "id": "editor:toggle-bullet-list",
"         "name": "글머리 목록 활성화/비활성화",
"         "icon": "lucide-list"
"     },
"     {
"         "id": "editor:toggle-numbered-list",
"         "name": "숫자 목록 활성화/비활성화",
"         "icon": "lucide-list-ordered"
"     },
"     {
"         "id": "editor:toggle-checklist-status",
"         "name": "체크박스 체크/해제",
"         "icon": "lucide-check-square",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "l"
"             }
"         ]
"     },
"     {
"         "id": "editor:cycle-list-checklist",
"         "name": "글머리 목록/체크박스 순환",
"         "icon": "lucide-check-square"
"     },
"     {
"         "id": "editor:insert-callout",
"         "name": "콜아웃 삽입",
"         "icon": "lucide-quote"
"     },
"     {
"         "id": "editor:insert-codeblock",
"         "name": "코드 블럭 삽입",
"         "icon": "lucide-code"
"     },
"     {
"         "id": "editor:insert-horizontal-rule",
"         "name": "수평선 삽입",
"         "icon": "lucide-minus"
"     },
"     {
"         "id": "editor:insert-mathblock",
"         "name": "수식 블럭 삽입",
"         "icon": "lucide-sigma-square"
"     },
"     {
"         "id": "editor:insert-table",
"         "name": "표 삽입",
"         "icon": "lucide-table"
"     },
"     {
"         "id": "editor:insert-footnote",
"         "name": "각주 삽입",
"         "icon": "lucide-file-signature"
"     },
"     {
"         "id": "editor:indent-list",
"         "name": "들여쓰기",
"         "icon": "lucide-indent"
"     },
"     {
"         "id": "editor:unindent-list",
"         "name": "내어쓰기",
"         "icon": "lucide-outdent"
"     },
"     {
"         "id": "editor:swap-line-up",
"         "name": "윗줄과 바꾸기",
"         "icon": "lucide-corner-right-up",
"         "repeatable": true
"     },
"     {
"         "id": "editor:swap-line-down",
"         "name": "아랫줄과 바꾸기",
"         "icon": "lucide-corner-right-down",
"         "repeatable": true
"     },
"     {
"         "id": "editor:attach-file",
"         "name": "첨부 파일 추가",
"         "icon": "lucide-paperclip"
"     },
"     {
"         "id": "editor:delete-paragraph",
"         "name": "단락 제거",
"         "icon": "lucide-scissors",
"         "repeatable": true,
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "D"
"             }
"         ]
"     },
"     {
"         "id": "editor:add-cursor-below",
"         "name": "아래에 커서 추가",
"         "icon": "lucide-mouse-pointer-click",
"         "repeatable": true
"     },
"     {
"         "id": "editor:add-cursor-above",
"         "name": "위에 커서 추가",
"         "icon": "lucide-mouse-pointer-click",
"         "repeatable": true
"     },
"     {
"         "id": "editor:toggle-spellcheck",
"         "name": "맞춤법 검사 활성화/비활성화"
"     },
"     {
"         "id": "editor:context-menu",
"         "name": "컨텍스트 메뉴를 커서 뒤에 열기",
"         "icon": "lucide-menu"
"     },
"     {
"         "id": "file-explorer:open",
"         "name": "파일 탐색기: 파일 탐색기 표시",
"         "icon": "lucide-files"
"     },
"     {
"         "id": "file-explorer:reveal-active-file",
"         "name": "파일 탐색기: 파일 탐색기에서 파일 보기",
"         "icon": "lucide-navigation"
"     },
"     {
"         "id": "file-explorer:new-folder",
"         "name": "파일 탐색기: 새 폴더 생성",
"         "icon": "lucide-folder-plus"
"     },
"     {
"         "id": "global-search:open",
"         "name": "검색: 모든 파일 찾기",
"         "icon": "lucide-search",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod",
"                     "Shift"
"                 ],
"                 "key": "F"
"             }
"         ]
"     },
"     {
"         "id": "switcher:open",
"         "name": "빠른 전환기: 빠른 전환기 열기",
"         "icon": "lucide-navigation",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "O"
"             }
"         ]
"     },
"     {
"         "id": "graph:open",
"         "name": "그래프 뷰: 그래프 뷰 열기",
"         "icon": "lucide-git-fork",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "G"
"             }
"         ]
"     },
"     {
"         "id": "graph:open-local",
"         "name": "그래프 뷰: 로컬 그래프 열기",
"         "icon": "lucide-git-fork"
"     },
"     {
"         "id": "backlink:open",
"         "name": "백링크: 백링크 패널 표시",
"         "icon": "lucide-link"
"     },
"     {
"         "id": "backlink:open-backlinks",
"         "name": "백링크: 현재 파일의 백링크 열기",
"         "icon": "lucide-link"
"     },
"     {
"         "id": "backlink:toggle-backlinks-in-document",
"         "name": "백링크: 현재 파일의 백링크 활성화/비활성화",
"         "icon": "lucide-link"
"     },
"     {
"         "id": "canvas:new-file",
"         "name": "캔버스: 새 캔버스 만들기",
"         "icon": "lucide-layout-dashboard"
"     },
"     {
"         "id": "outgoing-links:open",
"         "name": "나가는 링크: 나가는 링크 패널 표시",
"         "icon": "lucide-link"
"     },
"     {
"         "id": "outgoing-links:open-for-current",
"         "name": "나가는 링크: 현재 파일의 나가는 링크 열기",
"         "icon": "lucide-link"
"     },
"     {
"         "id": "tag-pane:open",
"         "name": "태그 패널: 태그 패널 표시",
"         "icon": "lucide-tag"
"     },
"     {
"         "id": "properties:open",
"         "name": "속성 화면: 모든 속성 표시",
"         "icon": "lucide-archive"
"     },
"     {
"         "id": "properties:open-local",
"         "name": "속성 화면: 파일 속성 표시",
"         "icon": "lucide-info"
"     },
"     {
"         "id": "daily-notes",
"         "name": "일일 노트: 오늘의 일일 노트 열기",
"         "icon": "lucide-calendar-days"
"     },
"     {
"         "id": "insert-template",
"         "name": "템플릿: 템플릿 삽입",
"         "icon": "lucide-copy"
"     },
"     {
"         "id": "insert-current-date",
"         "name": "템플릿: 현재 날짜 삽입",
"         "icon": "lucide-calendar-days"
"     },
"     {
"         "id": "insert-current-time",
"         "name": "템플릿: 현재 시간 삽입",
"         "icon": "lucide-clock"
"     },
"     {
"         "id": "note-composer:merge-file",
"         "name": "노트 작성기: 현재 파일을 다음 파일로 합치기...",
"         "icon": "lucide-git-merge"
"     },
"     {
"         "id": "command-palette:open",
"         "name": "명령어 팔레트: 명령어 팔레트 열기",
"         "icon": "lucide-terminal-square",
"         "hotkeys": [
"             {
"                 "modifiers": [
"                     "Mod"
"                 ],
"                 "key": "P"
"             }
"         ],
"         "showOnMobileToolbar": true
"     },
"     {
"         "id": "bookmarks:open",
"         "name": "북마크: 북마크 표시",
"         "icon": "lucide-bookmark"
"     },
"     {
"         "id": "bookmarks:bookmark-current-view",
"         "name": "북마크: 북마크...",
"         "icon": "lucide-bookmark-plus"
"     },
"     {
"         "id": "bookmarks:bookmark-current-search",
"         "name": "북마크: 현재 검색 북마크...",
"         "icon": "lucide-search"
"     },
"     {
"         "id": "bookmarks:bookmark-current-section",
"         "name": "북마크: 마우스 커서 뒤 블럭 북마크...",
"         "icon": "lucide-bookmark-plus"
"     },
"     {
"         "id": "bookmarks:bookmark-current-heading",
"         "name": "북마크: 마우스 커서 뒤 제목 북마크...",
"         "icon": "lucide-bookmark-plus"
"     },
"     {
"         "id": "bookmarks:bookmark-all-tabs",
"         "name": "북마크: 모든 탭 북마크...",
"         "icon": "lucide-bookmark-plus"
"     },
"     {
"         "id": "outline:open",
"         "name": "개요: 개요 패널 표시",
"         "icon": "lucide-list"
"     },
"     {
"         "id": "outline:open-for-current",
"         "name": "개요: 현재 파일의 개요 열기",
"         "icon": "lucide-list"
"     },
"     {
"         "id": "file-recovery:open",
"         "name": "파일 복원: 저장된 스냅샷 열기",
"         "icon": "lucide-rotate-ccw"
"     },
"     {
"         "id": "sync:setup",
"         "name": "동기화: 동기화 설정하기",
"         "icon": "lucide-settings"
"     },
"     {
"         "id": "bases:new-file",
"         "name": "베이스: 새 베이스 생성하기",
"         "icon": "lucide-layout-list"
"     },
"     {
"         "id": "bases:insert",
"         "name": "베이스: 새 베이스 삽입하기",
"         "icon": "lucide-layout-list"
"     }
" ]

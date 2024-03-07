# Cleanfiles
공용 컴퓨터를 위해서 재부팅될때마다 특정 폴더의 파일을 삭제하는 PowerShell Script

1. Downloads, Documents, Pictures, Videos, Music 내 모든 파일 삭제
1-1. Dounloads 폴더 내 .ps1 파일 제외 모두 삭제
2. 바탕화면에 단축 아이콘 (.lnk) 제외 모두 삭제
2-1. BACKUP 폴더 내 파일 제외
2-2. 인터넷 링크 파일 (.url) 제외
3. 휴지통 비우기


사용법
1. Cleanfile.ps1 파일을 "C:\Users\PhysicsLab\Downloads"에 복사 
2. 우클릭 - 속성 - 일반에서 특성:숨김 체크 (학생들이 지우는 걸 방지)
3. Cleanfile.cmd 파일을 "C:\Users\PhysicsLab\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"로 복사

3-1. 시작프로그램 폴더는 기본적으로 숨김처리 돼있으므로, "Windows + R" 버튼 혹은 윈도우 시작창에서 "실행"으로 검색

3-2. shell:startup 입력

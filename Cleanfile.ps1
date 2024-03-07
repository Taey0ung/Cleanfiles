
Remove-Item -Force -Recurse "C:\Users\PhysicsLab\Downloads\*" -Exclude *.ps1
Remove-Item -Force -Recurse "C:\Users\PhysicsLab\Documents\*" -ErrorAction SilentlyContinue
Remove-Item -Force -Recurse "C:\Users\PhysicsLab\Pictures\*"
Remove-Item -Force -Recurse "C:\Users\PhysicsLab\Videos\*"
Remove-Item -Force -Recurse "C:\Users\PhysicsLab\Music\*"

# 사용자 바탕화면 경로 설정
$desktopPath = [System.Environment]::GetFolderPath("Desktop")

# 바탕화면에서 모든 파일을 조회하고, .lnk와 .url 파일을 제외한 후 삭제
Get-ChildItem -Path $desktopPath -File -Recurse | Where-Object {
    $_.Extension -ne '.lnk' -and
    $_.Extension -ne '.url' -and
    $_.FullName -notlike "*\BACKUP\*"
} | Remove-Item -Force -Confirm:$false

# 바탕화면에서 모든 폴더를 조회하고 BACKUP 폴더를 제외한 후 삭제
Get-ChildItem -Path $desktopPath -Directory | Where-Object {
    $_.Name -notlike "BACKUP"
} | Remove-Item -Force -Recurse -Confirm:$false

# 휴지통 비우기
Clear-RecycleBin -Force -Confirm:$false

/**
 * 모든 JSP에서 공유하는 파일 업로드 제한 로직 (이벤트 위임 방식)
 */
document.addEventListener('change', function (event) 
{
    if (event.target && event.target.type === 'file') 
    {        
        const fileInput = event.target;
        const file = fileInput.files[0];

        if (!file) return;

        // --- [설정 구간] ---
        // 1. 허용할 확장자
        const allowedExtensions = ['jpg', 'jpeg', 'png', 'pdf', 'hwp', 'zip', 'txt'];
        
        // 2. 최대 허용 용량 (예: 10MB로 설정)
        // 계산법: 10 * 1024 * 1024 = 10,485,760 bytes
        const maxSize = 10 * 1024 * 1024; 
        // ------------------

        // [확장자 검사]
        const fileName = file.name;
        const fileExtension = fileName.split('.').pop().toLowerCase();

        if (!allowedExtensions.includes(fileExtension)) 
        {
            alert
            (
               "업로드할 수 없는 파일 형식입니다!\n" +	                 
	   		   "허용 목록 파일은 " + allowedExtensions.join(', ') + "입니다."
            );
            fileInput.value = ""; 
            return; // 용량 검사까지 가지 않고 종료
        }

        // [용량 검사] 추가된 부분!
        if (file.size > maxSize) 
        {
            const sizeInMB = (maxSize / (1024 * 1024)).toFixed(0); // 표시용 MB 변환
            alert(`파일 용량이 너무 큽니다.\n최대 업로드 가능 용량은 ${sizeInMB}MB입니다.`);
            
            fileInput.value = ""; // 입력창 비우기
            return;
        }

        console.log("검증 통과! 파일명: " + fileName + " / 크기: " + (file.size / 1024).toFixed(1) + "KB");
    }
});

/**
 * 
 */
function writeCheck() {
	 if(document.writeForm.qbtitle.value.length == 0) {
		 alert("제목을 입력해주세요.");
		 return;
	 }
	 if(document.writeForm.qbcontent.value.length == 0) {
		 alert("내용을 입력해주세요.");
		 return;
	 }
	 if(document.writeForm.qbcontent.value.length == 10) {
		 alert("내용을 입력해주세요.");
		 return;
	 }
	 
	 document.writeForm.submit();
	 
	}
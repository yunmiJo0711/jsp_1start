/**
 * 4_register.jsp 의 form 요소값을 검사
 */
// submit 버튼을 실행할 때 처리되는 이벤트 함수
// check2.js 코드를 for문으로 바꿉니다.
function checkValues(){
	let isSubmit = true
	//css 선택자를 이용하여 검사해야할 '요소들을' 가져오기
	const test 
	= document.querySelectorAll('div.input-group > input, div.input-group > select');
	console.log(test)  // 브라우저의 개발자 도구 콘솔에서 확인 
	
	// test 결과를 역순으로 정렬
	const reverse = Array.from(test).reverse();
	
	// 반복 메소드 forEach 활용 - 하나씩 가져온 요소는 element 변수에 저장
	reverse.forEach(element => {
		element.nextElementSibling.innerHTML = ''
		// === 는 값과 형식(타입까지 체크하는것) 동등비교(엄격한 비교), == 값 동등 비교, != 값 불일치 비교 차이점 알기.
		if(element.value === ''&& element.name != 'email'){
				// element (입력요소)의 다음 위치 형제 가져오기
				element.nextElementSibling.innerHTML = '필수입력 입니다.'
				element.focus()
				isSubmit=false
		}
		
	})
	
	
	return isSubmit
}

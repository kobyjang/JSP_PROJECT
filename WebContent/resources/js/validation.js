function CheckAddPet() {
	var petId = document.getElementById("petId");
	var name = document.getElementById("name");
	var sex = document.getElementById("sex");
	var adopt = document.getElementById("adopt");
	var dutyPrice = document.getElementById("dutyPrice");

	
	// 상품아아디 체크
	if (!check(/^P[0-9]{2,11}$/, petId,
			"[동물 코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
		return false;
	
	// 상품명 체크
	if (name.value.length < 2 || name.value.length > 12) {
		alert("[이름]\n최소 2자에서 최대 50자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	// 성별 체크
		if (sex.value.length < 1 || sex.value.length > 6) {
		alert("[성별]\n최소 2자에서 최대 6자까지 입력하세요");
		sex.select();
		sex.focus();
		return false;
	}
	// 분양 체크
		if (adopt.value.length < 1 || adopt.value.length > 6) {
		alert("[분양]\n최소 2자에서 최대 6자까지 입력하세요");
		adopt.select();
		adopt.focus();
		return false;
	}
	
	// 책임비 가격 체크
	if (dutyPrice.value.length == 0 || isNaN(dutyPrice.value)) {
		alert("[책임비]\n숫자만 입력하세요");
		dutyPrice.select();
		dutyPrice.focus();
		return false;
	}

	if (dutyPrice.value < 0) {
		alert("[책임비]\n음수를 입력할 수 없습니다");
		dutyPrice.select();
		dutyPrice.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, dutyPrice,
			"[책임비]\n소수점 둘째 자리까지만 입력하세요"))
		return false;

	

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newPet.submit()
}

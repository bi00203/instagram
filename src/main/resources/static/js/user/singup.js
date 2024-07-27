const csrfToken = document.querySelector('input[name=_csrf]').value;
// 인증번호 발송 버튼
const emailAuthBtn = document.getElementById('email-auth-btn');
emailAuthBtn.onclick = () => {
    fetch(`/user/auth`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "X-CSRF-TOKEN": csrfToken
        },
        body: JSON.stringify()
    }).then(response => {
        if(response.status === 200){ // 발송 성공
            alert('이메일에 인증번호를 발송했습니다!')
        }
        else{
            alert('이메일 전송에 실패하였습니다. 다시 한번 확인해주세요.')
        }
    })
}
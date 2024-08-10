const createPostBtn = document.getElementById('create-post-btn');
// 생성 버튼 클릭 시 동작
createPostBtn.onclick = () => {
    console.log('게시물 생성 창 OPEN..');
    // object 태그를 생성한다
    const createPostObject = document.createElement('object');
    // object 태그에서 /post/create 화면을 호출한다
    createPostObject.data = '/post/create';
    // 현재 창의 body에 추가한다
    document.body.appendChild(createPostObject);
}
// 자식 window (create-post.html에 있는 js)에서 보내는
// message 이벤트에 반응할 수 있도록
window.addEventListener('message', event => {
    // 현재 창에 있는 object 태그(create-post.html)를 가져옴
    const object = document.querySelector('object');
    if(event.data === 'remove'){ // remove 라는 신호를 받았다면 (게시물 등록 취소)
        object.remove(); // object 태그 삭제
    }
    else if(event.data === 'post'){ // post 신호를 받았다면 (게시물 등록)
        object.remove(); // object 태그 삭제
        location.reload(); // 화면 새로고침
    }
    
})






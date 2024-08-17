const csrfToken = document.querySelector('meta[name=_csrf]').getAttribute('content');
/*******************************************************************/
const subMenuContainer = document.querySelector('.sub-menu-container');
const searchContainer = document.querySelector('.search-container');
const alarmContainer = document.querySelector('.alarm-container');
const userSearchViewBtn = document.getElementById('user-search-view-btn');
const alarmViewBtn = document.getElementById('alarm-view-btn');
// 유저 검색 버튼
userSearchViewBtn.onclick = () => {
    alarmContainer.removeAttribute('active');
    // 서브 메뉴가 켜져 있는 상태일 때 (알림 혹은 검색 창이 켜져 있을 때)
    if(subMenuContainer.hasAttribute('active')){
        // 검색 창을 보고 있었는데 검색 View버튼을 눌렀다 === 닫기
        if(searchContainer.hasAttribute('active')){
            subMenuContainer.removeAttribute('active');
            searchContainer.removeAttribute('active');
        }
        // 알림 창을 보고 있었는데 검색 View 버튼을 눌렀다 == 알림 창과 검색 창을 교체
        else{
            alarmContainer.removeAttribute('active');
            searchContainer.setAttribute('active', '');
        }
    }
    // 서브 메뉴가 꺼져 있는 상태일 때 === 그냥 열면 된다
    else{
        subMenuContainer.setAttribute('active', '');
        searchContainer.setAttribute('active', '');
    }
}
// 알림 검색 버튼
alarmViewBtn.onclick = () => {
    searchContainer.removeAttribute('active');
    // 서브 메뉴가 켜져 있는 상태일 때 (알림 혹은 검색 창이 켜져 있을 때)
    if(subMenuContainer.hasAttribute('active')){
        // 알림 창을 보고 있었는데 알림 View버튼을 눌렀다 === 닫기
        if(alarmContainer.hasAttribute('active')){
            subMenuContainer.removeAttribute('active');
            alarmContainer.removeAttribute('active');
        }
        // 검색 창을 보고 있었는데 알림 View 버튼을 눌렀다 == 알림 창과 검색 창을 교체
        else{
            searchContainer.removeAttribute('active');
            alarmContainer.setAttribute('active', '');
        }
    }
    // 알림 메뉴가 꺼져 있는 상태일 때 === 그냥 열면 된다
    else{
        subMenuContainer.setAttribute('active', '');
        alarmContainer.setAttribute('active', '');
    }
}
/*******************************************************************/
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
/*******************************************************************/
const configViewBtn = document.getElementById('config-view-btn');
const configList = document.getElementById('config-list');
configViewBtn.onclick = () => {
    configList.toggleAttribute('active');
}
/**********************************************************/
const searchInput = document.getElementById('search-input');
const searchContainerUl = searchContainer.querySelector('ul');
searchInput.onkeyup = () => {
    const keyword = searchInput.value;
    search_users(keyword);
}

function search_users(keyword){
    fetch(`/user/search?keyword=${keyword}`)
        .then(response => response.json())
        .then(users => {
            searchContainerUl.innerHTML = '';
            for(const user of users) {
                searchContainerUl.insertAdjacentHTML(`beforeend`,
                    `<li>
                        <a href="/user/mypage/${user.email}" type="button">
                            <span class="user-profile-img-container">
                                <img src="/image/${user.email}" alt="#"/>
                            </span>
                            <section class="info-container">
                                <div>
                                    <span class="user-profile-nickname">${user.nickname}</span>
                                </div>
                                <div class="user-info">
                                    <span>${user.name}</span>
                                    <span>·</span>
                                    <span>팔로잉</span>
                                </div>
                            </section>
                            <button type="button" class="search-rm-btn">
                                <i class="bi bi-x-lg"></i>
                            </button>
                        </a>
                    </li>`
                );
            }
        })
}


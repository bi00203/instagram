const createBtn = document.getElementById('create-btn');

const createPostContainer = document.getElementById('create-post-container');
const createPostCloseBtn = document.getElementById('create-post-close-btn');

const imageViewerSection = document.querySelector('.image-viewer-section');
const imageViewerSectionFigureTag = imageViewerSection.querySelector('figure');

const imageFileViewer = document.getElementById('image-file-viewer');
const imageFileViewerOnOffBtn = document.getElementById('image-file-viewer-on-off-btn');

const imageFilePlusView = imageFileViewer.querySelector('li')
const imageFilePlusFileInput = imageFilePlusView.querySelector('input[type=file]');
const imageFilePlusBtn = imageFilePlusView.querySelector('label');

// 폼 전송하기
createBtn.onclick = () => {
    document.forms.item(0).submit();
}


// 닫기 버튼 클릭
createPostCloseBtn.onclick = () => {
    if(confirm('등록을 취소하시겠습니까?')){
        createPostContainer.removeAttribute('active');
    }
}
// Image viewer ON / OFF
imageFileViewerOnOffBtn.onclick = function () {
    imageFileViewer.toggleAttribute('active');
}

imageFilePlusFileInput.onchange = () => {
    const file = imageFilePlusFileInput.files[0];
    const fileType = file.type.toString();
    if(fileType.includes('image')){
        create_image_file_view(`<img alt="">`);
    }
    else if(fileType.includes('video')){
        create_image_file_view(`<video autoplay></video>`);
    }
    imageFilePlusFileInput.files = null;
};

function create_image_file_view(tag){
    /**************************************************/
    // object URL 생성
    const objectURL = URL.createObjectURL(imageFilePlusFileInput.files[0]);
    // 새로운 PLUS 요소 생성 후 큰 화면 변경
    const newImageFilePlusView = imageFilePlusView.cloneNode(true);
    imageFileViewer.insertBefore(newImageFilePlusView, imageFilePlusView);
    newImageFilePlusView.setAttribute('active', ''); // 뷰어 화면 변경
    imageViewerSection.setAttribute('active', ''); // 뷰어 화면 변경
    imageViewerSectionFigureTag.innerHTML = tag;
    imageViewerSectionFigureTag.firstElementChild.src = objectURL; // 뷰어 태그의 데이터 설정

    // 작은 화면 설정
    const figureTag = newImageFilePlusView.querySelector('figure');
    figureTag.innerHTML = tag;
    const objectTag = figureTag.firstElementChild;
    objectTag.src = objectURL;

    // 이미지 보기 클릭
    newImageFilePlusView.onclick = (e) => {
        e.preventDefault();
        e.stopPropagation();
        imageViewerSectionFigureTag.innerHTML = tag;
        const imageViewerSectionObjectTag = imageViewerSectionFigureTag.firstElementChild;
        imageViewerSectionObjectTag.src = objectTag.src; // 뷰어 태그의 데이터 설정
        imageViewerSection.setAttribute('active', ''); // 뷰어 화면 변경
    };

    // 삭제 버튼 클릭 시
    const rmBtn = newImageFilePlusView.querySelector('button');
    rmBtn.onclick = (e) => {
        e.stopPropagation();
        e.preventDefault();
        if(confirm('정말 삭제하시겠습니까?')){
            newImageFilePlusView.remove();
            const activatedViews = document.querySelectorAll('.image-file-view[active]');
            if(activatedViews.length === 0){
                imageViewerSectionFigureTag.firstElementChild.src = null;
                imageViewerSection.removeAttribute('active');
            }else{
                const lastObjectTag = activatedViews[activatedViews.length - 1].querySelector('figure').firstElementChild;
                imageViewerSectionFigureTag.firstElementChild.remove();
                imageViewerSectionFigureTag.appendChild(lastObjectTag.cloneNode(true));
                imageViewerSectionFigureTag.firstElementChild.src = lastObjectTag.src;
            }
        }
    };
}
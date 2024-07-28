const createPostObject= document.getElementById('create-post-object');
const createPostBtn = document.getElementById('create-post-btn');
createPostBtn.onclick = () => {
    createPostObject.data = '/create';
}
const article = document.querySelector('article');
article.addEventListener('click', event => {
    if(event.target === article){
        window.parent.postMessage('remove', '*');
    }
});


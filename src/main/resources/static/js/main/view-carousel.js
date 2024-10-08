const emblaNode = document.querySelector('.view-container .embla');
const emblaApi = embla_init(emblaNode);
const maxViewWidth = +getComputedStyle(emblaNode).width.replaceAll('px', '');
// const imgs = emblaNode.getElementsByTagName('img');
const slides = emblaNode.querySelectorAll('.embla__slide');
const contentsWidths = [...slides].map(elem => {
    const imgWidth = +getComputedStyle(elem.firstElementChild).width.replaceAll('px', '');
    if(maxViewWidth > imgWidth){
        return `${imgWidth}px`;
    }else{
        return `100%`;
    }
});
[...slides].forEach(elem => { elem.firstElementChild.style.width = '100%'; });
emblaNode.style.width = contentsWidths[0];
slides[0].firstElementChild.style.visibility = 'unset';
emblaApi.on('select', () => {
    const index = emblaApi.selectedScrollSnap();
    const prevIndex = emblaApi.previousScrollSnap();
    emblaNode.style.width = contentsWidths[index];
    setTimeout(() => {
        slides[prevIndex].firstElementChild.style.visibility = 'hidden';
        slides[index].firstElementChild.style.visibility = 'unset';
    }, 250);
});

// const imgWidths = [...imgs].map(img => {
//     const imgWidth = +getComputedStyle(img).width.replaceAll('px', '');
//     if(maxViewWidth > imgWidth){
//         return `${imgWidth}px`;
//     }else{
//         return `100%`;
//     }
// });

// [...imgs].forEach(img => {img.style.width = '100%';});
// emblaNode.style.width = imgWidths[0];
// imgs[0].style.visibility = 'unset';
// emblaApi.on('select', () => {
//     const index = emblaApi.selectedScrollSnap();
//     const prevIndex = emblaApi.previousScrollSnap();
//     emblaNode.style.width = imgWidths[index];
//     setTimeout(() => {
//         imgs[prevIndex].style.visibility = 'hidden';
//         imgs[index].style.visibility = 'unset';
//     }, 250);
// });
const boxes = document.querySelectorAll('.box');
const thewrapper = document.querySelector('.thewrapper');
const menu = document.querySelector('.menu');

// show menu
showmenu();
function showmenu(){
    boxes.forEach(box =>{
        box.addEventListener('contextmenu',function(e){
        e.preventDefault();
        e.stopPropagation();
        const y = e.pageY;
        const x = e.pageX
        menu.style.left = `${x}px`;
        menu.style.top = `${y}px`;
        menu.style.display = 'block';
        })
    })
}
// 

// hidden menu
thewrapper.addEventListener('click', hidmenu);
function hidmenu(e){
    if(e.target.className != 'menu'){
        menu.style.display = 'none';
    }
}
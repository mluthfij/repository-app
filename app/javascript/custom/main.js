const boxes = document.querySelectorAll('.box');
const thewrapper = document.querySelector('.thewrapper');
const menu = document.querySelector('.menu');
// 
const boxes2 = document.querySelectorAll('.box2');
const thewrapper2 = document.querySelector('.thewrapper2');
const menu2 = document.querySelector('.menu2');
// 

// show menu
showmenu();
showmenu2();
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

// box 2
function showmenu2(){
    boxes2.forEach(box2 =>{
        box2.addEventListener('contextmenu',function(e){
        e.preventDefault();
        e.stopPropagation();
        const y = e.pageY;
        const x = e.pageX
        menu2.style.left = `${x}px`;
        menu2.style.top = `${y}px`;
        menu2.style.display = 'block';
        })
    })
}
// hidden menu
thewrapper2.addEventListener('click', hidmenu2);
function hidmenu2(e){
    if(e.target.className != 'menu2'){
        menu2.style.display = 'none';
    }
}
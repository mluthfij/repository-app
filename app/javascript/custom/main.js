const boxes = document.querySelectorAll('.box');
<<<<<<< HEAD
const thewrapper = document.querySelector('.thewrapper');
=======
const wrapper = document.querySelector('.wrapper');
>>>>>>> add right click
const menu = document.querySelector('.menu');

// show menu
showmenu();
<<<<<<< HEAD

=======
>>>>>>> add right click
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
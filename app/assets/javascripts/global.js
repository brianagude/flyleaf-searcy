const menu = document.querySelector('nav')
const button = document.querySelector('a.menu-button')

  $(button).click(function(){
    $(menu).toggleClass("show");

    return false
  });


const split = document.querySelector('section.split')
const change = document.querySelector('a.switch')

  $(change).click(function(){
    $(split).toggleClass("switch");

    return false
  });

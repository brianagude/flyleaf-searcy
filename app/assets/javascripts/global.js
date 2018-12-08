// toggle the menu
const menu = document.querySelector('nav')
const button = document.querySelector('a.menu-button')

  $(button).click(function(){
    $(menu).toggleClass("show");

    return false
  });

// toggle search
const search = document.querySelector('div.search')
const click = document.querySelector('a.search')

  $(click).click(function(){
    $(search).toggleClass("show-search");

    return false
  });

// toggle split screen
const split = document.querySelector('section.split')
const change = document.querySelector('a.switch')
$(change).click(function(){
  $(split).toggleClass("switch");

  return false
});

// toggle mobile the menu
const menu2 = document.querySelector('div.menu2')
const button2 = document.querySelector('a.menu-button2')

  $(button2).click(function(){
    $(menu2).addClass("show");

    return false
  });

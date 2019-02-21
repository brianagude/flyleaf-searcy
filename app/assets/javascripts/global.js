// toggle the menu
const button = document.querySelector("header a.menu");
const menu = document.querySelector("section.menu");

$(button).click(function() {
  $(menu).toggleClass("show-menu");
  return false;
});

// toggle search
const search = document.querySelector("div.search");
const click = document.querySelector("a.search");

$(click).click(function() {
  $(search).toggleClass("show-search");

  return false;
});

// toggle split screen
const split = document.querySelector("section.split");
const splitswitch = document.querySelector("a.splitswitch");
$(splitswitch).click(function() {
  $(split).toggleClass("switch");

  return false;
});

// toggle mobile the menu
const menu2 = document.querySelector("div.menu2");
const button2 = document.querySelector("a.menu-button2");

$(button2).click(function() {
  $(menu2).addClass("show");

  return false;
});

// new mouse
const cursor = document.querySelector("div.cursor");
let isMouseDown = false;

const grow = function() {
  cursor.classList.add("is-down");
};

const shrink = function() {
  cursor.classList.remove("is-down");
};

const moveCursor = function(x, y) {
  cursor.style.left = x + "px";
  cursor.style.top = y + "px";
};

document.addEventListener("mousedown", function(event) {
  isMouseDown = true;
  grow();
});

document.addEventListener("mouseup", function() {
  isMouseDown = false;
  shrink();
});

document.addEventListener("mousemove", function(event) {
  moveCursor(event.pageX, event.pageY);
  // console.log(event)
});

$("a").on("mouseenter", function() {
  $(".cursor").addClass("is-down");
});

$("a").on("mouseleave", function() {
  $(".cursor").removeClass("is-down");
});

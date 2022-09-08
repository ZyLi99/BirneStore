 // svg credit to Freepik https://www.freepik.com/free-vector/halloween-background-design-with-haunted-house-and-cemetery_3214325.htm

var flashLight = $('#flashlight');

function handleMouseMove(e) {
    var parentOffset = flashLight.parent().offset();
    var cursorX = (Modernizr.touch ? e.changedTouches[0].clientX : e.clientX) - parentOffset.left;
    var cursorY = (Modernizr.touch ? e.changedTouches[0].clientY : e.clientY) - parentOffset.top;
    TweenMax.set(flashlight, { background: "radial-gradient(circle at " + cursorX + "px " + cursorY + "px, transparent 0, rgba(0,0,0,0.3) 2vw, rgba(0,0,0,0.5) 3vw, rgba(0,0,0,0.7) 4vw, rgba(0,0,0,0.85) 7vw, rgba(0,0,0,0.95) 15vw )" });
}


$(function () {
    TweenMax.to(flashlight, 3, { opacity: 1 });
    document.addEventListener("mousemove", handleMouseMove);
    document.addEventListener("touchmove", handleMouseMove);
});
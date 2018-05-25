/* Hero Fade In Animations */

$('#hero-text').each(function () {
  $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({ loop: true })
    .add({
        targets: '#hero-text .letter',
        opacity: [0, 1],
        easing: "easeInOutQuad",
        duration: 5000,
        delay: function (el, i) {
            return 150 * (i + 1)
        }
    }).add({
        targets: '#hero-text',
        opacity: 0,
        duration: 5000,
        easing: "easeOutExpo",
        delay: 50
    }).add({
        targets: '#logo',
        opacity: [0, 1],
        easing: "easeInOutQuad",
        duration: 5000,
        delay: function (el, i) {
            return 150 * (i + 1)
        }
    }).add({
        targets: '#logo',
        opacity: 0,
        duration: 5000,
        easing: "easeOutExpo",
        delay: 50
    });

/* hamburger menu */
document.addEventListener('DOMContentLoaded', function () {

    var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

    if ($navbarBurgers.length > 0) {
        $navbarBurgers.forEach(function ($el) {
            $el.addEventListener('click', function () {
                var target = $el.dataset.target;
                var $target = document.getElementById(target);
                $el.classList.toggle('is-active');
                $target.classList.toggle('is-active');

            });
        });
    }

});
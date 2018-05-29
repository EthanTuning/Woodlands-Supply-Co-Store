/* Hero Fade In Animations */

$('#main-hero-text').each(function () {
  $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({ loop: true })
    .add({
        targets: '#main-hero-text .letter',
        opacity: [0, 1],
        easing: "easeInOutQuad",
        duration: 4000,
        delay: function (el, i) {
            return 150 * (i + 1)
        }
    }).add({
        targets: '#main-hero-text',
        opacity: 0,
        duration: 4000,
        easing: "easeOutExpo",
        delay: 50
    }).add({
        targets: '#logo',
        opacity: [0, 1],
        easing: "easeInOutQuad",
        duration: 4000,
        delay: function (el, i) {
            return 150 * (i + 1)
        }
    }).add({
        targets: '#logo',
        opacity: 0,
        duration: 4000,
        easing: "easeOutExpo",
        delay: 50
    });

/* Hamburger Menu */

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

/* Launch Modal */

function showModal(product) {

    if (product == 1) {

        $(".modal-card-title").val("Aventure Medical Kits Mountain Series Hiker Med Kit");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Aventure Medical Hiker Med Kit.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$20");
    }

    if (product == 2) {

        $(".modal-card-title").val("Black Biamond Trail Ergo Cork Trekking Poles");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Black Biamond Trail Ergo Cork Trekking Poles.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$80");
    }

    if (product == 3) {

        $(".modal-card-title").val("Petzl Tikkina Headlamp");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Petzl Tikkina Headlamp.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$15");
    }

    if (product == 4) {

        $(".modal-card-title").val("Playtypus Big Zip LP Reservoir");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Playtypus Big Zip LP Reservoir.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$25");
    }

    if (product == 5) {

        $(".modal-card-title").val("REI Co-op Bitty Sack 3 Pack");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/REI Co-op Bitty Sack 3 Pack.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$30");
    }

    if (product == 6) {

        $(".modal-card-title").val("REI Co-op Traverse 70 Hipbelt");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/REI Co-op Traverse 70 Hipbelt.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$30");
    }

    if (product == 7) {

        $(".modal-card-title").val("Suunto MC-2G Navigator Compass");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Suunto MC-2G Navigator Compass.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$55");
    }

    if (product == 8) {

        $(".modal-card-title").val("Granite Gear Crown2 60 Pack");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/Granite Gear Crown2 60 Pack.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$200");
    }

    if (product == 9) {

        $(".modal-card-title").val("Kid Comfort 3 Child Carrier");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/Kid Comfort 3 Child Carrier.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$220");
    }

    if (product == 10) {

        $(".modal-card-title").val("Osprey Atmos 65 Pack");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/Osprey Atmos 65 Pack.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$200");
    }

    if (product == 11) {

        $(".modal-card-title").val("REI Co-op Trail 25");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/REI Co-op Trail 25.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$50");
    }

    if (product == 12) {

        $(".modal-card-title").val("ENO Double Deluxe Hammock");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/ENO Double Deluxe Hammock.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$60");
    }

    if (product == 13) {

        $(".modal-card-title").val("ENO Sub7 Hammock");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/ENO Sub7 Hammock.png");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$35");
    }

    if (product == 14) {

        $(".modal-card-title").val("Helinox Table One");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/Helinox Table One.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$90");
    }

    if (product == 15) {

        $(".modal-card-title").val("Kelty Discovery Low-Level Seat");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/Kelty Discovery Low-Level Seat.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$100");
    }

    if (product == 16) {

        $(".modal-card-title").val("Mountain Summit Gear Roll Top Kitchen");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/Mountain Summit Gear Roll Top Kitchen.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$100");
    }

    if (product == 17) {

        $(".modal-card-title").val("REI Co-op Camp Xtra Chair");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/REI Co-op Camp Xtra Chair.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$25");
    }

    if (product == 18) {

        $(".modal-card-title").val("REI Co-op Trail Stool");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/REI Co-op Trail Stool.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$15");
    }

    if (product == 19) {

        $(".modal-card-title").val("Asolo Fulton Mid Hiking Boots");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Asolo Fulton Mid Hiking Boots.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$140");
    }

    if (product == 20) {

        $(".modal-card-title").val("Marmot PreCip Rain Jacket");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Marmot PreCip Rain Jacket.png");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$70");
    }

    if (product == 21) {

        $(".modal-card-title").val("Marmot PreCip Safari Hat");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Marmot PreCip Safari Hat.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$45");
    }

    if (product == 22) {

        $(".modal-card-title").val("Outdoor Research Plaza Down Vest");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Outdoor Research Plaza Down Vest.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$175");
    }

    if (product == 23) {

        $(".modal-card-title").val("Patagonia Down Sweater");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Patagonia Down Sweater.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$45");
    }

    if (product == 24) {

        $(".modal-card-title").val("Salomon Quest 4D GTX Hiking Boots");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Salomon Quest 4D GTX Hiking Boots.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$175");
    }

    if (product == 25) {

        $(".modal-card-title").val("Teva Voya Infinity Sandals");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Teva Voya Infinity Sandals.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$145");
    }

    if (product == 26) {

        $(".modal-card-title").val("Big Agnes Newcomb SL 0 Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/Big Agnes Newcomb SL 0 Sleeping Bag.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$165");
    }

    if (product == 27) {

        $(".modal-card-title").val("TMarmot Trestles 0 Sleepinng Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/Marmot Trestles 0 Sleepinng Bag.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$120");
    }

    if (product == 28) {

        $(".modal-card-title").val("NEMO Canon -40 Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/NEMO Canon -40 Sleeping Bag.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$790");
    }

    if (product == 29) {

        $(".modal-card-title").val("REI Co-op Igneo 25 Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/REI Co-op Igneo 25 Sleeping Bag.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$195");
    }

    if (product == 30) {

        $(".modal-card-title").val("Seat to Summit Traveller Tr I Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/Seat to Summit Traveller Tr I Sleeping Bag.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$230");
    }

    if (product == 31) {

        $(".modal-card-title").val("Big Agnes Fly Creek HV UL 1 mtnGLO Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/Big Agnes Fly Creek HV UL 1 mtnGLO Tent.png");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$240");
    }

    if (product == 32) {

        $(".modal-card-title").val("MSR FreeLite 3 Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/MSR FreeLite 3 Tent.png");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$300");
    }

    if (product == 33) {

        $(".modal-card-title").val("REI Co-op Half Dome 2 Plus Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/REI Co-op Half Dome 2 Plus Tent.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$140");
    }

    if (product == 34) {

        $(".modal-card-title").val("REI Co-op Passage 2 Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/REI Co-op Passage 2 Tent.jpg");
        $(".modal-product-description").val("Description");
        $(".modal-product-price").val("$100");
    }

    $(".modal").addClass("is-active");
}

$(".modal-close").click(function() {
    $(".modal").removeClass("is-active");

    return false;
});
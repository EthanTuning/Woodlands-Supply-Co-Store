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
        $(".modal-product-description").val("The Adventure Medical Kits Hiker medical kit is equipped with carefully selected supplies tailored to meet any basic first-aid needs you and a friend might experience on a 2-day adventure.");
        $(".modal-product-weight").val("7.2 oz.");
        $(".modal-product-price").val("$20");
    }

    if (product == 2) {

        $(".modal-card-title").val("Black Biamond Trail Ergo Cork Trekking Poles");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Black Biamond Trail Ergo Cork Trekking Poles.jpg");
        $(".modal-product-description").val("The Black Diamond Trail Ergo Cork Trekking Poles help keep you going in every season with mountain-goat sure-footedness and ease of use.");
        $(".modal-product-weight").val("18 oz.");
        $(".modal-product-price").val("$80");
    }

    if (product == 3) {

        $(".modal-card-title").val("Petzl Tikkina Headlamp");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Petzl Tikkina Headlamp.jpg");
        $(".modal-product-description").val("The light, simple and compact Petzl Tikkina headlamp boasts a long burn time, making it ideal for camping, hiking and post-sunset yard work.");
        $(".modal-product-weight").val("3.03 oz.");
        $(".modal-product-price").val("$15");
    }

    if (product == 4) {

        $(".modal-card-title").val("Playtypus Big Zip LP Reservoir");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Playtypus Big Zip LP Reservoir.jpg");
        $(".modal-product-description").val("Stay hydrated on the trail or during a long bike ride with the simple, secure Big Zip LP 2-Liter Reservoir from Platypus. Its streamlined design slides easily into your pack for on-the-go sipping.");
        $(".modal-product-weight").val("5.6 oz.");
        $(".modal-product-price").val("$25");
    }

    if (product == 5) {

        $(".modal-card-title").val("REI Co-op Ditty Sack 3 Pack");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/REI Co-op Ditty Sack 3 Pack.jpg");
        $(".modal-product-description").val("This set of REI Co-op Ditty sacks with drawstring/toggle closures helps you organize and store your gear for camping or backpacking.");
        $(".modal-product-weight").val("3 oz.");
        $(".modal-product-price").val("$30");
    }

    if (product == 6) {

        $(".modal-card-title").val("REI Co-op Traverse 70 Hipbelt");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/REI Co-op Traverse 70 Hipbelt.jpg");
        $(".modal-product-description").val("Replace worn or damaged hipbelts and ensure the perfect fit with the REI Co-op Traverse 70 Hipbelt in 3 interchangeable sizes.");
        $(".modal-product-weight").val("10.2 oz.");
        $(".modal-product-price").val("$30");
    }

    if (product == 7) {

        $(".modal-card-title").val("Suunto MC-2G Navigator Compass");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacking Accessories/Suunto MC-2G Navigator Compass.jpg");
        $(".modal-product-description").val("An accurate and reliable mirror compass for the outdoor enthusiast, the Suunto MC-2 Pro compass offers mirrored sighting, adjustable declination and a clinometer.");
        $(".modal-product-weight").val("2.65 oz.");
        $(".modal-product-price").val("$55");
    }

    if (product == 8) {

        $(".modal-card-title").val("Granite Gear Crown2 60 Pack");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/Granite Gear Crown2 60 Pack.jpg");
        $(".modal-product-description").val("Float down the trail in ethereal comfort on your next multiday adventure with the roll-top, ultralight, weather-worthy design and adjustable hipbelt of the Granite Gear Crown2 60 pack.");
        $(".modal-product-weight").val("36.7 oz.");
        $(".modal-product-price").val("$200");
    }

    if (product == 9) {

        $(".modal-card-title").val("Kid Comfort 3 Child Carrier");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/Kid Comfort 3 Child Carrier.jpg");
        $(".modal-product-description").val("Treat both your child and your shoulders to comfort on the trail with a deluxe Aircontact Pro back system, integrated sunroof and adjustable fit of the Deuter Kid Comfort 3 child carrier.");
        $(".modal-product-weight").val("123 oz.");
        $(".modal-product-price").val("$220");
    }

    if (product == 10) {

        $(".modal-card-title").val("Osprey Atmos 65 Pack");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/Osprey Atmos 65 Pack.jpg");
        $(".modal-product-description").val("Don't abandon comfort just because you're leaving your creature comforts at home. The Osprey Atmos AG 65 pack uses Anti-Gravity™ technology to distribute the load and provide a dreamlike fit.");
        $(".modal-product-weight").val("73 oz.");
        $(".modal-product-price").val("$200");
    }

    if (product == 11) {

        $(".modal-card-title").val("REI Co-op Trail 25");
        $(".modal-product-image").attr("src", "Assets/Products/Backpacks/REI Co-op Trail 25.jpg");
        $(".modal-product-description").val("This compact, durable pack carries loads comfortably, organizes a variety of essentials and includes a built-in raincover.");
        $(".modal-product-weight").val("25 oz.");
        $(".modal-product-price").val("$50");
    }

    if (product == 12) {

        $(".modal-card-title").val("ENO Double Deluxe Hammock");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/ENO Double Deluxe Hammock.jpg");
        $(".modal-product-description").val("The Double Deluxe hammock is 26 in. wider than the popular DoubleNest hammock, providing ample space for 2 or more people to sway in comfort on a summer day.");
        $(".modal-product-weight").val("28 oz.");
        $(".modal-product-price").val("$60");
    }

    if (product == 13) {

        $(".modal-card-title").val("ENO Sub7 Hammock");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/ENO Sub7 Hammock.png");
        $(".modal-product-description").val("At only 6.5 oz., the ENO Sub7 hammock lets you ditch your tent and enjoy the comfort and sway of a hammock while you're in the backcountry.");
        $(".modal-product-weight").val("6.5 oz.");
        $(".modal-product-price").val("$35");
    }

    if (product == 14) {

        $(".modal-card-title").val("Helinox Table One");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/Helinox Table One.jpg");
        $(".modal-product-description").val("Upgrade your picnic game with the Helinox Table One and be the envy of all the free summer concertgoers in your local park. It includes 2 inset cup holders and is a must-have in any travel kit.");
        $(".modal-product-weight").val("24 oz.");
        $(".modal-product-price").val("$90");
    }

    if (product == 15) {

        $(".modal-card-title").val("Kelty Discovery Low-Level Seat");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/Kelty Discovery Low-Level Seat.jpg");
        $(".modal-product-description").val("The Kelty Discovery Low-Love Seat is a super-comfy folding chair built for 2, and is perfect for all-day summer festivals or getting cozy around the fire during a road trip or car camping adventure.");
        $(".modal-product-weight").val("246 oz.");
        $(".modal-product-price").val("$100");
    }

    if (product == 16) {

        $(".modal-card-title").val("Mountain Summit Gear Roll Top Kitchen");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/Mountain Summit Gear Roll Top Kitchen.jpg");
        $(".modal-product-description").val("Set up your camp kitchen in less than a minute, then break it down just as quickly. The durable Mountain Summit Gear Roll Top kitchen sets the standard in ease of use and fast setup/takedown.");
        $(".modal-product-weight").val("163.2 oz.");
        $(".modal-product-price").val("$100");
    }

    if (product == 17) {

        $(".modal-card-title").val("REI Co-op Camp Xtra Chair");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/REI Co-op Camp Xtra Chair.jpg");
        $(".modal-product-description").val("Sturdy, comfortable and stocked with 2 drink holders and a side stash pocket, this chair features X-Web technology to evenly distribute your weight and make the most of your lounge time.");
        $(".modal-product-weight").val("160 oz.");
        $(".modal-product-price").val("$25");
    }

    if (product == 18) {

        $(".modal-card-title").val("REI Co-op Trail Stool");
        $(".modal-product-image").attr("src", "Assets/Products/Camping Accessories/REI Co-op Trail Stool.jpg");
        $(".modal-product-description").val("Get off the ground and up onto the comfortable, travel-friendly Trail Stool. It's light enough to take on short hikes and sturdy enough for regular use at the campground.");
        $(".modal-product-weight").val("18 oz.");
        $(".modal-product-price").val("$15");
    }

    if (product == 19) {

        $(".modal-card-title").val("Asolo Fulton Mid Hiking Boots");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Asolo Fulton Mid Hiking Boots.jpg");
        $(".modal-product-description").val("Asolo Fulton Mid hiking boots are lightweight, breathable, comfortable and protective footwear that's made to move quickly. Vibram® Megagrip soles let you explore a variety of terrain.");
        $(".modal-product-weight").val("33.2 oz.");
        $(".modal-product-price").val("$140");
    }

    if (product == 20) {

        $(".modal-card-title").val("Marmot PreCip Rain Jacket");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Marmot PreCip Rain Jacket.png");
        $(".modal-product-description").val("Don't just beat the rain; enjoy it with the men's Marmot PreCip Rain Jacket. New Marmot NanoPro™ fabric is waterproof, windproof and more breathable than ever before.");
        $(".modal-product-weight").val("11 oz.");
        $(".modal-product-price").val("$70");
    }

    if (product == 21) {

        $(".modal-card-title").val("Marmot PreCip Safari Hat");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Marmot PreCip Safari Hat.jpg");
        $(".modal-product-description").val("Take cover from the rain, wind, sleet, and snow with the waterproof, breathable Marmot PreCip® Safari Hat.");
        $(".modal-product-weight").val("10 oz.");
        $(".modal-product-price").val("$45");
    }

    if (product == 22) {

        $(".modal-card-title").val("Outdoor Research Plaza Down Vest");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Outdoor Research Plaza Down Vest.jpg");
        $(".modal-product-description").val("Layer the Outdoor Research Plaza down vest over your favorite long-sleeve top, or even just a T-shirt, for those in-between days where a full-on puffy is just too much.");
        $(".modal-product-weight").val("15 oz.");
        $(".modal-product-price").val("$175");
    }

    if (product == 23) {

        $(".modal-card-title").val("Patagonia Down Sweater");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Patagonia Down Sweater.jpg");
        $(".modal-product-description").val("This down sweater delivers ultralight, compressible warmth for your cold-weather fun outside while everyone else is languishing at the gym or huddled by the fireplace.");
        $(".modal-product-weight").val("13.1 oz.");
        $(".modal-product-price").val("$45");
    }

    if (product == 24) {

        $(".modal-card-title").val("Salomon Quest 4D GTX Hiking Boots");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Salomon Quest 4D GTX Hiking Boots.jpg");
        $(".modal-product-description").val("Get to your next campsite with dry, happy feet in the Salomon Quest 4D 3 GTX men's hiking boots. With technology designed to help reduce fatigue, they lend support for your backpacking treks.");
        $(".modal-product-weight").val("45.2 oz.");
        $(".modal-product-price").val("$175");
    }

    if (product == 25) {

        $(".modal-card-title").val("Teva Voya Infinity Sandals");
        $(".modal-product-image").attr("src", "Assets/Products/Clothing/Teva Voya Infinity Sandals.jpg");
        $(".modal-product-description").val("Whether you're taking a weekend jaunt around town or heading off for a detoxifying yoga practice, slip into the women's Teva Voya Infinity sandals for relaxed, casual comfort.");
        $(".modal-product-weight").val("18.3 oz.");
        $(".modal-product-price").val("$145");
    }

    if (product == 26) {

        $(".modal-card-title").val("Big Agnes Newcomb SL 0 Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/Big Agnes Newcomb SL 0 Sleeping Bag.jpg");
        $(".modal-product-description").val("When you're cozying up on the trail, you may mistake the insulation in the Big Agnes Newcomb SL 0 sleeping bag for down. It packs small when you're moving and springs back when you're snoozing.");
        $(".modal-product-weight").val("72 oz.");
        $(".modal-product-price").val("$165");
    }

    if (product == 27) {

        $(".modal-card-title").val("TMarmot Trestles 0 Sleepinng Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/Marmot Trestles 0 Sleepinng Bag.jpg");
        $(".modal-product-description").val("When you're trekking or mountaineering, you need reliable insulation despite sustained cold and damp conditions. The Marmot Trestles 0 sleeping bag delivers with all-purpose synthetic filling.");
        $(".modal-product-weight").val("79 oz.");
        $(".modal-product-price").val("$120");
    }

    if (product == 28) {

        $(".modal-card-title").val("NEMO Canon -40 Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/NEMO Canon -40 Sleeping Bag.jpg");
        $(".modal-product-description").val("For comfort from base camp to summit, the NEMO Canon -40 sleeping bag is designed to keep you warm in extreme conditions on mountaineering missions.");
        $(".modal-product-weight").val("77 oz.");
        $(".modal-product-price").val("$790");
    }

    if (product == 29) {

        $(".modal-card-title").val("REI Co-op Igneo 25 Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/REI Co-op Igneo 25 Sleeping Bag.jpg");
        $(".modal-product-description").val("A premium, fitted backpacking bag for wet conditions, the 3-season REI Co-op Igneo 25 mummy bag doubles up on protection with both water-repellent down and waterproof/breathable fabric panels.");
        $(".modal-product-weight").val("28 oz.");
        $(".modal-product-price").val("$195");
    }

    if (product == 30) {

        $(".modal-card-title").val("Seat to Summit Traveller Tr I Sleeping Bag");
        $(".modal-product-image").attr("src", "Assets/Products/Sleep/Seat to Summit Traveller Tr I Sleeping Bag.jpg");
        $(".modal-product-description").val("Filled with 750-fill-power water-resistant duck down, the Sea to Summit Traveller Tr I Sleeping Bag is ideal for fast-and-light backpacking or year-round traveling to hostels and huts.");
        $(".modal-product-weight").val("16.8 oz.");
        $(".modal-product-price").val("$230");
    }

    if (product == 31) {

        $(".modal-card-title").val("Big Agnes Fly Creek HV UL 1 mtnGLO Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/Big Agnes Fly Creek HV UL 1 mtnGLO Tent.png");
        $(".modal-product-description").val("The Big Agnes Fly Creek HV UL 1 mtnGLO tent improves upon the award-winning original with steeper walls, vertical door and integrated mtnGLO Tent Light Technology to light up the interior.");
        $(".modal-product-weight").val("34 oz.");
        $(".modal-product-price").val("$240");
    }

    if (product == 32) {

        $(".modal-card-title").val("MSR FreeLite 3 Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/MSR FreeLite 3 Tent.png");
        $(".modal-product-description").val("The MSR FreeLite 3 Fast and Light Body is another way to cut the tent weight for minimalist backpackers. If you already own the FreeLite Tent, then you're almost on your way to lightweight freedom. Using the poles and fly you already have, leave the original tent body at home and pack up the Fast & Light Body. Bathtub style floor to take care of damp grounds and rain splatter from below while the rest of the protection comes from the rainfly.");
        $(".modal-product-weight").val("42 oz.");
        $(".modal-product-price").val("$300");
    }

    if (product == 33) {

        $(".modal-card-title").val("REI Co-op Half Dome 2 Plus Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/REI Co-op Half Dome 2 Plus Tent.jpg");
        $(".modal-product-description").val("With an exterior that stands up to foul weather, the REI Co-op Half Dome 2 Plus tent is a light and roomy shelter that's 10 in. longer and 4 in. wider than the classic REI Co-op Half Dome 2 tent.");
        $(".modal-product-weight").val("87 oz.");
        $(".modal-product-price").val("$140");
    }

    if (product == 34) {

        $(".modal-card-title").val("REI Co-op Passage 2 Tent");
        $(".modal-product-image").attr("src", "Assets/Products/Tents/REI Co-op Passage 2 Tent.jpg");
        $(".modal-product-description").val("High in livability and low in cost, the REI Passage 2 is a lightweight, 3-season, 2-person tent that sets up easily and features 2 doors, each with a vestibule, for easy access and ample storage.");
        $(".modal-product-weight").val("85 oz.");
        $(".modal-product-price").val("$100");
    }

    $(".modal").addClass("is-active");
}

$(".modal-close").click(function() {
    $(".modal").removeClass("is-active");

    return false;
});
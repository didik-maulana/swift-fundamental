//
//  PlaceDummy.swift
//  SubmissionApps
//
//  Created by Mamikos on 26/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation
import UIKit

var places: [Place] = [
    Place(
        photo: UIImage(named: "dieng"),
        title: "Dieng Plateau",
        description: "Perched at 2,000 meters (6,562 feet) above sea level, Dieng Plateau is one of the coolest destinations in Indonesia, and not just weather-wise. Both a natural and cultural destination, there are many things to see and do in Dieng Plateau. Other than the sweeping mountain view of jungles and distant villages, this highland also has a multi-colored lake, hot spring, and ancient Hindu temples. Once a year, tourists flock to the spot for a much-anticipated festival that includes traditional rituals, performances, and jazz above the clouds."
    ),
    Place(
        photo: UIImage(named: "borobudur"),
        title: "Borobudur Temple",
        description: "The world’s biggest Buddhist sanctuary is a must-visit attraction, not only because of its religious significance but also for its beauty and charm. Built around the eighth century, this temple is a reflection of the country’s long and intricate history that covers religion, culture, customs, architecture, and more. Tourists can observe the ornate and mesmerizing stone carvings, gaze of the main grand structure, and immerse themselves in the surrounding scenic view that includes the sunrise, jungles, and faraway hills."
    ),
    Place(
        photo: UIImage(named: "komodo_park"),
        title: "Komodo National Park",
        description: "A mighty and otherworldly lizard, the Komodo is arguably one of the most fascinating creatures on earth—one you can only encounter in the wild at Indonesia’s Komodo National Park. Captivating as it is, the Komodo is hardly the only interesting thing in this string of exotic islands that constitute the Komodo National Park. The three islands—Komodo, Padar, and Rinca—have glorious hills and a beach view, along with a breathtaking coastline, lush tropical hills, and thriving underwater wildlife. The Komodo Island even has the famed pink sand beach, while Padar Island has an iconic hill with a view of three magnificent bays."
    ),
    Place(
        photo: UIImage(named: "raja_ampat"),
        title: "Raja Ampat",
        description: "With one of the liveliest underwater scenes on the planet, this world-famous tropical paradise is home to over 530 species of coral, 700 species of mollusk, and 1,300 types of fish. Despite the magnetism of exotic species and a breathtaking island view, Raja Ampat remains largely pristine because of its remote location and vast locality. More than just a divers’ paradise, Raja Ampat also makes an unforgettable destination for birdwatchers, photographers, adventurers, and even those who long for a luxury vacation with an amazing view in a faraway island."
    ),
    Place(
        photo: UIImage(named: "bromo"),
        title: "Mount Bromo",
        description: "This volcano, often surrounded by smoke and a multi-colored sky, has become one of the most iconic sights from Indonesia. Watching the sunrise at Mount Bromo from Java Island is a popular excursion that offers and unforgettable experience. The volcano also shares the area with a vast desert, other lush mountains and hills, sweeping flower fields, and some waterfalls, most of which can be explored in a day or two."
    ),
    Place(
        photo: UIImage(named: "ubud"),
        title: "Ubud",
        description: "Considered Bali’s art and culture capital, Ubud charms tourists beyond its elegant art galleries and lively traditional performances. Ubud is also one of the most beautiful neighborhoods in the popular island destination. The famed Tegalalang Rice Terrace, for example, is a must-visit spot while in Bali. Ubud’s lush tropical jungles, calming rivers, and other natural features have also provided many wellness establishments with a serene atmosphere. Even a casual stroll or meal in this locality may come with a lovely view of nature or architecture."
    ),
    Place(
        photo: UIImage(named: "toba"),
        title: "Lake Toba",
        description: "Toba is not only Indonesia’s biggest lake, it is also one of its most beautiful; it is stunning from every angle. Almost twice the size of Singapore, there are many viewpoints to enjoy the sight of this volcanic lake, surrounded by hills and lush greenery. While in the nearby villages, tourists can also explore the fascinating Batak culture, with its captivating traditions and cultural objects. Tourists can also visit Samosir, the small charming island in the middle of Lake Toba."
    ),
    Place(
        photo: UIImage(named: "toraja"),
        title: "Tana Toraja",
        description: "Mostly prized for its bewitching funeral traditions, Tana Toraja is also a beautiful destination. This highland in South Sulawesi has a majestic backdrop of mountain scenery, lush tropical jungles, and ornate villages with captivating traditional houses. Tourists can start the day watching the sun rise from above the clouds, then continue exploring the villages and picturesque hills, including the eerie but fascinating burial cave."
    ),
    Place(
        photo: UIImage(named: "tanjung_puting"),
        title: "Tanjung Puting National Park",
        description: "Just in case a vast, mostly untouched tropical jungle with fresh air, mystical morning fog, birds chirping, and rivers gushing are not enticing enough for you, factor this in: Tanjung Puting National Park is home to the wild orangutan, the adorable primate that steals the hearts of many, with its loveliness and wit."
    ),
    Place(
        photo: UIImage(named: "derawan"),
        title: "Derawan Islands",
        description: "This archipelago in East Kalimantan is one of Indonesia’s best examples of tropical paradise, comprised of six staggering islands and some smaller islets, each with its own adventures and charm. Maratua Island, for example, is known for its sublime sea caves, lakes, and lavish resorts. Kakaban Island offers swimming in a lake full of stingless jellyfish. Sangalaki Island is popular for diving and snorkeling, due to its thriving underwater scene, filled with coral, manta rays, turtles, and more. The relatively remote location helps conserve the natural beauty of this archipelago, making it a pristine and beautiful island paradise in Indonesia."
    ),
    Place(
        photo: UIImage(named: "bangka_belitung"),
        title: "Bangka Belitung Islands",
        description: "Located off the coast of mainland Sumatra, Bangka Belitung Island is famed for its idyllic beaches with blissful white sand, iconic granite boulders, and palm trees. But beyond the translucent water and hypnotizing sunsets, the locality is also home to impressive cultural and historical landmarks—many of which are heritage buildings from the colonial era—that suit the charming natural view. From this archipelago, tourists can also venture to the surrounding smaller inhabited islands for even more pristine natural beauty."
    ),
    Place(
        photo: UIImage(named: "wae_rebo"),
        title: "Wae Rebo Village",
        description: "This charming Indonesian village in Flores has been gaining more recognition worldwide for its unique charm. Its iconic cone-shaped main houses, aligned beautifully against the backdrop of picturesque mountains and occasional mist, are adored by domestic and international tourists alike. Located in a remote highland, don’t miss the surrounding nature, with its thriving orchids, wildlife, and tropical greeneries."
    ),
    Place(
        photo: UIImage(named: "lombok"),
        title: "Lombok",
        description: "Some say Lombok reminds them of Bali decades ago, before the island became a tourist magnet. Lombok’s landscape and beaches are no doubt on par with Bali, and are arguably more beautiful because of their pristine state. Among the most glorious sights in Lombok is the volcano Mount Rinjani and Pink Beach. The world-famous Gili Islands, just off the coast of Lombok, are also a must-visit, offering a mix of natural beauty and modern attractions such as luxury resorts and hip bars."
    ),
    Place(
        photo: UIImage(named: "nusa"),
        title: "Nusa Island",
        description: "Often referred to as “The Maldives of Bali,” this string of three islands off the coast of Bali is an up-and-coming tropical paradise with natural attractions that many would argue outshine the famed mainland. Nusa Penida, Nusa Lembongan, and Nusa Ceningan each have their own specialty, but all three offer a splendid underwater scene, with thriving wildlife, translucent water, and a calm surface. The areas are perfect for diving, snorkeling, or water sports. Other favorite activities include cliff-jumping in Nusa Ceningan, crossing the yellow bridge between Nusa Lembongan and Nusa Ceningan, caving, hiking, and more."
    ),
    Place(
        photo: UIImage(named: "bukittinggi"),
        title: "Bukittinggi",
        description: "This charming town in West Sumatra is at the forefront of tourism in the province. At 930 meters (3,051 feet) above sea level, this town has a glorious highland view and crisp fresh air. Bukittinggi has breathtaking nature, a long history, and extraordinary cultural values, all of which attracts many tourists each year. Popular destinations include the majestic Sianok Canyon, the Japanese WWII underground tunnels, Dutch hilltop fortress Fort de Kock, Pasar Atas traditional market, and the iconic Jam Gadang clock tower, which was built during the colonial era in 1926."
    ),
]

//
//  CoffeeItem.swift
//  Brew
//
//  Created by Michael Williams on 5/4/17.
//  Copyright © 2017 Michael D. Williams. All rights reserved.
//

import Foundation
import UIKit

struct CoffeeItem {
    
    let methodName: String
    let image: String
    var description: String
    var brewMethod: String
    
    init(methodName: String, image: String, description: String, brewMethod: String) {
        self.methodName = methodName
        self.image = image
        self.description = description
        self.brewMethod = brewMethod
    }
    
    
    static var coffeeMethods: [CoffeeItem] = {
        return [
            CoffeeItem(methodName: "Espresso",
                       image: "espresso",
                       description: "Espresso is coffee brewed by forcing a small amount of nearly boiling water under pressure through finely ground coffee beans. Espresso is generally thicker than coffee brewed by other methods, has a higher concentration of suspended and dissolved solids, and has crema on top (a foam with a creamy consistency). As a result of the pressurized brewing process, the flavors and chemicals in a typical cup of espresso are very concentrated. Espresso is also the base for other drinks such as a caffè latte, cappuccino, caffè macchiato, caffè mocha, flat white, or caffè Americano.",
                       brewMethod: "Steps here..."),
            CoffeeItem(methodName: "Turkish",
                       image: "turkish-coffee",
                       description: "Turkish coffee (Greek coffee) is a method of preparing unfiltered coffee. Roasted and then finely ground coffee beans are simmered (not boiled) in a pot (cezve), optionally with sugar, and served in a cup where the grounds are allowed to settle. When served plain, the bitter coffee is traditionally accompanied by a sweet, such as a piece of rock candy or lokum.",
                       brewMethod: "Steps here..."),
            CoffeeItem(methodName: "Drip",
                       image: "pour-over",
                       description: "Drip coffee is made by pouring hot water onto ground coffee beans, then allowing to brew. There are several methods for doing this, including using a filter, a percolator, and a French press. Terms used for the resulting coffee often reflect the method used, such as drip brewed coffee, filtered coffee, pour-over coffee, or simply ground coffee. Water seeps through the ground coffee, absorbing its oils and essences, solely under gravity, then passes through the bottom of the filter. The used coffee grounds are retained in the filter with the liquid falling (dripping) into a collecting vessel such as a carafe or pot.",
                       brewMethod: "Steps here..."),
            CoffeeItem(methodName: "French Press",
                       image: "french-press",
                       description: "French press coffee is made by combining ground coffee beans and hot water in a cylindrical carafe. After the coffee is steeped for a desired amount of time, the included plunger is pressed down firmly to seperate the coffee grounds from the water and then the coffee poured into the cup of your choice.",
                       brewMethod: "Steps here..."),
            CoffeeItem(methodName: "Moka Pot",
                       image: "moka-pot",
                       description: "The moka pot, also known as a macchinetta del caffè (literally 'small coffee machine'), is a stove-top or electric coffee maker that produces coffee by passing boiling water pressurized by steam through ground coffee.",
                       brewMethod: "Steps here..."),
            CoffeeItem(methodName: "Cold Brew",
                       image: "cold-brew",
                       description: "Cold brew, also called cold water extract or cold press, is the process of steeping coffee grounds in water at a cool or hot temperatures for an extended period. Coarse-ground beans are soaked in water for a prolonged period of time, usually 12 hours or more. The water is normally kept at room temperature, but chilled water is also used. The grounds are filtered out of the water after they have been steeped using a paper coffee filter, a fine metal sieve, a French press or felt, in the case of the 'Toddy' brewing system. The result is a coffee concentrate that is often diluted with water or milk, and is served hot, over ice, or blended with ice and other ingredients such as chocolate. Slow-drip cold brew, also known as Kyoto-style, or as Dutch coffee in East Asia,[8] refers to a process in which water is dripped through coffee grounds at room temperature over the course of many hours.",
                       brewMethod: "Steps here..."),
            CoffeeItem(methodName: "Aeropress",
                       image: "aeropress",
                       description: "The AeroPress is a device for brewing coffee. It was invented in 2005 by Aerobie president Alan Adler. Coffee is steeped for 10–50 seconds (depending on grind and preferred strength) and then forced through a filter by pressing the plunger through the tube. The filters used are either the AeroPress paper filters or disc shaped thin metal filters. The maker describes the result as an espresso strength concentration of coffee, but its most frequent use is more in the filter brew strength.",
                       brewMethod: "Steps here...")
        ]
        }()
    
}

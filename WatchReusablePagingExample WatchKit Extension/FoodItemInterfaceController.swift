//
//  InterfaceController.swift
//  WatchReusablePagingExample WatchKit Extension
//
//  Created by Natasha Murashev on 9/26/16.
//  Copyright © 2016 Natasha Murashev. All rights reserved.
//

import WatchKit

class FoodItemInterfaceController: WKInterfaceController {

    @IBOutlet var image: WKInterfaceImage!
    @IBOutlet var label: WKInterfaceLabel!
    
    static var first = true
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if FoodItemInterfaceController.first {
            WKInterfaceController.reloadRootControllers(withNames: ["FoodItem1", "FoodItem2", "FoodItem3"], contexts: FoodItem.foodItems)
            FoodItemInterfaceController.first = false
        }
        
        if let foodItem = context as? FoodItem {
            image.setImage(UIImage(named: foodItem.imageName))
            label.setText(foodItem.title)
        }
    }
}

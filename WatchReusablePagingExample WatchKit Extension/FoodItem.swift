//
//  FoodItem.swift
//  WatchReusablePagingExample
//
//  Created by Natasha Murashev on 9/26/16.
//  Copyright © 2016 Natasha Murashev. All rights reserved.
//

struct FoodItem {
    let title: String
    let imageName: String
}

extension FoodItem {
    
    static let foodItems = [
        FoodItem(title: "Camogliese al Rum", imageName: "comogli"),
        FoodItem(title: "Pesto alla Genovese", imageName: "pasta"),
        FoodItem(title: "Focaccia di Recco", imageName: "recco"),
    ]
}


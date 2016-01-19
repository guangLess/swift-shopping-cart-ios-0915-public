//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Guang on 1/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    
    var items = [Item]()
    
    //var items = [Item]()
    /*
    Write a method named totalPriceInCents() that takes no arguments and returns an Int. This method should return the total cost of all the items in the items array.
    */
    func totalPriceInCents() -> Int{
        
        var total : Int = 0
        for eachItem in items {
            total += eachItem.priceInCents
        }
        return total
    }
    
    /*
    Write a method named addItem(_:) that takes one argument of type Item and provides no return. This method should add the argument to the end of the items property array.
    */
    
    func addItem (addedItem:Item){
        items.append(addedItem)
    }
    
    /* Write a method named removeItem(_:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item.
    Write a method named itemsWithName(_:) that takes one string argument and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.
    Write a method named itemsWithMinimumPriceInCents(_:) that takes one integer argument and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
    */
    
    func removeItem(removedItem:Item){
        if (items.indexOf(removedItem) != nil ){
            items.removeAtIndex(items.indexOf(removedItem)! )
        } else {
            print("removedItem can not be find in the array")
        }
    }
    
    func itemsWithName(itemName:String) ->[Item] {
        var sameNamedItems = [Item]()
        
        for eachItem in items {
            
            if ( eachItem.name == itemName ){
                sameNamedItems.append(eachItem)
            }
        }
        
        return sameNamedItems
    }
    
    func itemsWithMinimumPriceInCents(comparedCents:Int) -> [Item] {
        
        var collectedItems = [Item]()
        
        for eachItem in items {
            
            if (eachItem.priceInCents >= comparedCents){
                collectedItems.append(eachItem)
            }
        }
        
        return collectedItems
    }
    
    func itemsWithMaximumPriceInCents(comparedCents:Int) -> [Item] {
        
        var collectedItems = [Item]()
        
        for eachItem in items {
            
            if (eachItem.priceInCents <= comparedCents){
                collectedItems.append(eachItem)
            }
        }
        
        return collectedItems
    }
    
}


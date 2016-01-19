//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /**

        * Manually test your classes here.

        */
        
        
        var emptyCart = Cart()
        
        var fullCart = Cart()

        
        
        var apple = Item(name: "ap", priceInCents: 1)
        var ab = Item(name: "ab", priceInCents: 2)
        
        fullCart = Cart()
        fullCart.items = [apple, ab]
        
        print(fullCart.totalPriceInCents())
        
        

        
        var fruitCart = Cart()
        var appleCart = Cart()
        var junkFoodCart = Cart()
        
            emptyCart = Cart()
            
  
            
//            fruitCart = Cart()
//            fruitCart.items = [🍏, 🍎, 🍊, 🍓]
//            
//            appleCart = Cart()
//            appleCart.items = [🍏, 🍎, 🍏2, 🍏]
//            
//            junkFoodCart = Cart()
//            junkFoodCart.items = [🍕, 🌮,🍕2, 🍕, 🌮, 🌯, 🍕, 🍕2, 🌯]
        
        
        // Do not alter
        return true //
    }   /////////////
}       ////////////


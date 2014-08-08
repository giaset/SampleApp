//
//  AppDelegate.swift
//  SampleApp
//
//  Created by Gianni Settino on 2014-08-08.
//  Copyright (c) 2014 Appletes Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        launchApp()
        return true
    }

    func launchApp() {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        styleWithColors(primary: "#000000", secondary: "#ffffff")
        
        var home = UIViewController()
        home.title = "Home"
        home.view.backgroundColor = UIColor.whiteColor()
        var homeNavController = UINavigationController(rootViewController: home)
        
        var videos = UIViewController()
        videos.title = "Videos"
        videos.view.backgroundColor = UIColor.whiteColor()
        var videosNavController = UINavigationController(rootViewController: videos)
        
        var updates = UIViewController()
        updates.title = "Updates"
        updates.view.backgroundColor = UIColor.whiteColor()
        var updatesNavController = UINavigationController(rootViewController: updates)
        
        var controllers = NSMutableArray()
        controllers.addObject(homeNavController)
        controllers.addObject(videosNavController)
        controllers.addObject(updatesNavController)
        
        var tabBarController = UITabBarController()
        tabBarController.viewControllers = controllers
        
        self.window!.rootViewController = tabBarController
        
        self.window!.makeKeyAndVisible()
    }
    
    func styleWithColors(#primary: String, secondary: String) {
        var primaryColor = UIColor(red: 0.086, green: 0.627, blue: 0.522, alpha: 1)
        
        UIApplication.sharedApplication().setStatusBarStyle(.LightContent, animated: false)
        
        UINavigationBar.appearance().translucent = false
        UINavigationBar.appearance().barTintColor = primaryColor
        UINavigationBar.appearance().titleTextAttributes = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        
        UITabBar.appearance().translucent = false
        UITabBar.appearance().tintColor = primaryColor
    }

}


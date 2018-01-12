//
//  AppDelegate.swift
//  Neurosis
//
//  Created by Scott Thorpe on 1/4/18.
//  Copyright © 2018 Scott Thorpe. All rights reserved.
//

import Cocoa
import macOSThemeKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }
    
    func applicationWillFinishLaunching(_ notification: Notification) {
        
        /// Apply the dark theme
        ThemeManager.darkTheme.apply()
        
        /// or, the light theme
        //ThemeManager.lightTheme.apply()
        
        /// or, the 'system' theme, which dynamically changes to light or dark,
        /// respecting *System Preferences > General > Appearance* setting.
        //ThemeManager.systemTheme.apply()
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}


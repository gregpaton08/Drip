//
//  AppDelegate.swift
//  Drip
//
//  Created by Greg Paton on 5/8/19.
//  Copyright © 2019 GSP. All rights reserved.
//


// https://www.raywenderlich.com/450-menus-and-popovers-in-menu-bar-apps-for-macos


import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        if let button = statusItem.button {
            button.image = NSImage(named:NSImage.Name("StatusBarButtonImage"))
            button.action = #selector(printQuote(_:))
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func printQuote(_ sender: Any?) {
        let quoteText = "Never put off until tomorrow what you can do the day after tomorrow."
        let quoteAuthor = "Mark Twain"
        
        print("\(quoteText) — \(quoteAuthor)")
    }
    
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)

}


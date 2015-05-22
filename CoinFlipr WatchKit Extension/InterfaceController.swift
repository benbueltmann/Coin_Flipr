//
//  InterfaceController.swift
//  CoinFlipr WatchKit Extension
//
//  Created by Ben Bueltmann on 12/6/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {


    @IBOutlet weak var headsButton: WKInterfaceButton!
    @IBOutlet weak var tailsButton: WKInterfaceButton!
    @IBOutlet weak var flipGroup: WKInterfaceGroup!
    @IBOutlet weak var coinImage: WKInterfaceImage!
    @IBOutlet weak var headsGroup: WKInterfaceGroup!
    @IBOutlet weak var resultsGroup: WKInterfaceGroup!
    @IBOutlet weak var resultsButton: WKInterfaceButton!
    @IBAction func onFlip() {

        coinImage.setImageNamed("flip")
        coinImage.startAnimatingWithImagesInRange(NSMakeRange(1, 30), duration: 0.7, repeatCount: 0)
        flipGroup.setHidden(true)
        headsGroup.setHidden(false)
    }


    @IBAction func onResults() {
        coinImage.setImageNamed("heads")
        headsGroup.setHidden(true)
        resultsGroup.setHidden(true)
        flipGroup.setHidden(false)

    }
    @IBAction func onHeads() {
        coinImage.setImageNamed("tails")
        resultsGroup.setHidden(false)
        resultsButton.setBackgroundColor(UIColor.redColor())
        resultsButton.setTitle("Wrong! It was tails!")
        headsGroup.setHidden(true)

    }

    @IBAction func onTails() {
        coinImage.setImageNamed("heads")
        resultsGroup.setHidden(false)
        resultsButton.setBackgroundColor(UIColor.redColor())
        resultsButton.setTitle("Wrong! It was heads!")
        headsGroup.setHidden(true)

    }

    required init(context: AnyObject?) {
        // Initialize variables here.
        super.init()
        coinImage.setImageNamed("heads")
        headsGroup.setHidden(true)
        resultsGroup.setHidden(true)
        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }


}

//
//  ViewController.swift
//  Neuron
//
//  Created by Scott Thorpe on 1/4/18.
//  Copyright © 2018 Scott Thorpe. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var tableView: NSScrollView!
    @IBOutlet weak var introImage: NSImageView!
    @IBOutlet var mainView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(ViewController.show), userInfo: nil, repeats: false)
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(ViewController.hide), userInfo: nil, repeats: false)

    }
    
    @objc func show() {
        introImage.isHidden = true
        tableView.isHidden = false
    }
    
    @objc func hide() {
        introImage.isHidden = false
        tableView.isHidden = true
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


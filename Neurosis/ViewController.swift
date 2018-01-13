//
//  ViewController.swift
//  Neurosis
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
    
    // Nav
    @IBAction func homeBtn(_ sender: Any) {
        tableView.isHidden = false
    }

    @IBAction func chatBtn(_ sender: Any) {
        tableView.isHidden = true
    }
    
    @IBAction func libraryBtn(_ sender: Any) {
        tableView.isHidden = true
    }
    
    @IBAction func searchBtn(_ sender: Any) {
        tableView.isHidden = true
    }
    
    @IBAction func hotlistBtn(_ sender: Any) {
        tableView.isHidden = true
    }
    
    @IBAction func transferBtn(_ sender: Any) {
        tableView.isHidden = true
    }
    
    @IBAction func discoverBtn(_ sender: Any) {
        tableView.isHidden = true
    }
    
    @IBAction func helpBtn(_ sender: Any) {
        tableView.isHidden = true
    }
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSTableViewDelegate {
    
    fileprivate enum CellIdentifiers {
        static let NameCell = "NameCellID"
        static let DateCell = "DateCellID"
        static let SizeCell = "SizeCellID"
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        //let image: NSImage?
        var text: String = ""
        var cellIdentifier: String = ""
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .long
        
        //        guard let item = directoryItems?[row] else {
        //            return nil
        //        }
        
        
        if tableColumn == tableView.tableColumns[0] {
            //image = item.icon
            text = "test" //item.name
            cellIdentifier = CellIdentifiers.NameCell
        } else if tableColumn == tableView.tableColumns[1] {
            text = dateFormatter.string(from: dateFormatter.date(from: "2016-02-29 12:24:26")!)
            cellIdentifier = CellIdentifiers.DateCell
        } else if tableColumn == tableView.tableColumns[2] {
            text = "--"
            cellIdentifier = CellIdentifiers.SizeCell
        }
        
        if let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: cellIdentifier), owner: nil) as? NSTableCellView {
            cell.textField?.stringValue = text
            //cell.imageView?.image = image ?? nil
            return cell
        }
        return nil
    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        //updateStatus()
        print("Refresh column Morty!")
    }
    
}

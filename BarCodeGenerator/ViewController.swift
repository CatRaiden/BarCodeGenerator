//
//  ViewController.swift
//  BarCodeGenerator
//
//  Created by 1 on 2022/5/13.
//

import Cocoa

class SelectCodeType: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func aztecBtnPressed(_ sender: Any) {
        let vc = NSViewController.init(nibName: <#T##NSNib.Name?#>, bundle: <#T##Bundle?#>)
    }
    
}


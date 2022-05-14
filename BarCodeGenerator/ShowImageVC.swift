//
//  ShowImageVC.swift
//  BarCodeGenerator
//
//  Created by 1 on 2022/5/14.
//

import Cocoa

class ShowImageVC: NSViewController {
    
    @IBOutlet weak var imageView: NSImageView!
    var image: NSImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
    
}

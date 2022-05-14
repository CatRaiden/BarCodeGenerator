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
    
    private func showVC(image: NSImage?) {
        let sb = NSStoryboard(name: "Main", bundle: .main)
        let vc = sb.instantiateController(withIdentifier: "ShowImageVC") as! ShowImageVC
        vc.image = image
        presentAsModalWindow(vc)
    }
    
    @IBAction func aztecBtnPressed(_ sender: Any) {
        if let data = "https://www.apple.com".data(using: .ascii), let aztecBarcode = try? AztecBarcode(inputMessage: data) {
            showVC(image: BarcodeService.generateBarcode(from: aztecBarcode))
        }
    }
    
    @IBAction func qrcodeBtnPressed(_ sender: Any) {
        if let data = "https://www.apple.com".data(using: .ascii) {
            let qrCode = QRCode(inputMessage: data)
            showVC(image: BarcodeService.generateBarcode(from: qrCode))
        }
    }
    
    @IBAction func pdf417BtnPressed(_ sender: Any) {
        if let data = "https://www.apple.com".data(using: .ascii) {
            let pdfBarcode = PDF417Barcode(inputMessage: data, inputMinWidth: 100, inputMaxWidth: 100, inputMinHeight: 100, inputMaxHeight: 100, inputDataColumns: 10, inputRows: 10, inputPreferredAspectRatio: 3, inputCompactionMode: 2, inputCompactStyle: true, inputCorrectionLevel: 2, inputAlwaysSpecifyCompaction: true)
            showVC(image: BarcodeService.generateBarcode(from: pdfBarcode))
        }
    }
    
    @IBAction func code128BtnPressed(_ sender: Any) {
        if let data = "https://www.apple.com".data(using: .ascii) {
            let code128Barcode = Code128Barcode(inputMessage: data, inputQuietSpace: 20, inputBarcodeHeight: 100)
            showVC(image: BarcodeService.generateBarcode(from: code128Barcode))
        }
    }
    
    @IBAction func infoBtnPressed(_ sender: Any) {
        let alert = NSAlert()
        alert.messageText = "BOOM!!!!~~"
        alert.informativeText = "BUGGGGG~!"
        alert.icon = NSImage(systemSymbolName: "ladybug", accessibilityDescription: nil)
        alert.alertStyle = NSAlert.Style.warning
        alert.addButton(withTitle: "OK")
        alert.addButton(withTitle: "Cancel")
        alert.runModal()
    }
    
}


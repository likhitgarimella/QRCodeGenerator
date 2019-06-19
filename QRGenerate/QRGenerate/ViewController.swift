//
//  ViewController.swift
//  QRGenerate
//
//  Created by Likhit Garimella on 20/06/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBAction func Button(_ sender: Any)
    {
        if let myString = TextField.text    //We took the string from our text field
        {
            let data = myString.data(using: .ascii, allowLossyConversion: false)    //We created a data constant and we filled it with that string
            let filter = CIFilter(name: "CIQRCodeGenerator")    //Says we need a QR Code
            filter?.setValue(data, forKey: "InputMessage") //Value set to data
            
            let img = UIImage(ciImage: (filter?.outputImage)!) //Take the image from the filter constant
            
            ImageView.image = img   //Generates Image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


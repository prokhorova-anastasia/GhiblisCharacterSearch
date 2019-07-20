//
//  ViewController.swift
//  GhiblisCharacterSearch
//
//  Created by N on 16/07/2019.
//  Copyright © 2019 N. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {
    
    @IBOutlet weak var testWeb: WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        testWeb.load(URLRequest(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy6u20u3ovKrjW36JxPnMh6tiTdcDaNf2W4ow43MVWiRy2ZsGdxA")!))
        
        view.setGradientBackground(colorOne:UIColor(red: 13.0/255.0, green: 161.0/255.0, blue: 191.0/255.0, alpha: 1), colorTwo: UIColor(red: 115.0/255.0, green: 199.0/255.0, blue: 236.0/255.0, alpha: 1))
    }


}



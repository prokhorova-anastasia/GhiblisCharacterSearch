//
//  ViewController.swift
//  GhiblisCharacterSearch
//
//  Created by N on 16/07/2019.
//  Copyright © 2019 N. All rights reserved.
//  кнопка при нажатии на которой, проходит по массиву
//  создать лок переменую, в которой хранится инфа

import UIKit
import WebKit
import Alamofire
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var testWeb: WKWebView!
    @IBOutlet weak var testImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        view.setGradientBackground(colorOne:UIColor(red: 13.0/255.0, green: 161.0/255.0, blue: 191.0/255.0, alpha: 1), colorTwo: UIColor(red: 115.0/255.0, green: 199.0/255.0, blue: 236.0/255.0, alpha: 1))
        
        self.view.backgroundColor = UIColor.blue
        DispatchQueue.global(qos: .background).async { [weak self] in
            self?.fetchAllRooms()
        }
        }
    
    func fetchAllRooms() {
        Alamofire.request("https://ghibliapi.herokuapp.com/people",
                   method: .get).responseJSON { response in
                    switch response.result {
                    case .success:
                        print(response.data)
                        guard  let data = response.data else {
                            return
                        }
                        do {
                            let parsedCards = try
                                JSONDecoder().decode ([Character].self, from: data)
                            if let firstObj = parsedCards.get(0) {
                                DispatchQueue.main.async {
                                    if let urlString = firstObj.url
                                    { if let url = URL(string: urlString) {
                                        self.testWeb.load(URLRequest(url: url))
                                        }
                                    }
                                    if let nameString  = firstObj.name {
                                        self.nameLabel.text = nameString
                                    }
                                    
                                    if let hairString = firstObj.hair_color {
                                        self.hairLabel.text = hairString
                                    }
                                    
                                    if let ageString = firstObj.age {
                                        self.ageLabel.text = ageString
                                    }
                                }
                            }
                            
                            print (parsedCards)
                        } catch {
                            return
                        }
                        
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
}

}
}

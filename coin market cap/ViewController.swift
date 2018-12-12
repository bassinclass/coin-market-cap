//
//  ViewController.swift
//  coin market cap
//
//  Created by Timothy P. Konopacki on 9/7/18.
//  Copyright © 2018 TK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btcDomLabel: UILabel!
    @IBOutlet weak var ltcButtonOutlet: UIButton!
    @IBOutlet weak var bitButtonOutlet: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ethButtonOutlet: UIButton!
    var mainApi = [[String: Any]]()
    var apiOne = [Int: Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Cryptocurreny \nMarket Cap"
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        ltcButtonOutlet.layer.cornerRadius = 0.8
        let query = "https://api.coinmarketcap.com/v2/ticker/1/"
        //query.httpMethod = "GET"
        
        
        
        if let url = URL(string: query){

            //            if let data = try? Data(contentsOf: url){
            //                let json = try! JSON(data: data)
            //                    parse(json: json)
            //                    return
            //            }
            
            
            //Different technique than Top Stories:
            
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let jsonData = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSDictionary {
                    self.parse(json: jsonData)
                    
                    print(self.mainApi)
                
                }
                }.resume()
            
        }
        
    }
    
    @IBAction func ltcButtonAction(_ sender: UIButton) {
        
    }
    @IBAction func btcButtonAction(_ sender: UIButton) {
        print(mainApi)
    }
    @IBAction func ethButtonLabel(_ sender: UIButton) {
    }
    
    
    func parse(json: NSDictionary){
        
        let i = json["data"] as! NSDictionary
        let id = i["id"] as! Int
        let name = i["name"] as! String
        let symbol = i["symbol"] as! String
        
        let quotes = i["quotes"] as! NSDictionary
        let USD = quotes["USD"] as! NSDictionary
        
        let price = USD["price"] as! Double
        let volume = USD["volume_24h"] as! Double
        
        let api: [String: Any] = ["id": id, "name": name, "price": price, "volume_24h": volume, "symbol": symbol]
        mainApi.append(api)
        
    }
}





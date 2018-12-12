//
//  CoinViewController.swift
//  coin market cap
//
//  Created by Timothy P. Konopacki on 9/13/18.
//  Copyright © 2018 TK. All rights reserved.
//

import UIKit

class CoinViewController: UIViewController {
//var btc = [String: String]()
//var ltc = [String: String]()
//var eth = [String: String]()
    var apiTwo = [[String: Any]]()
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var hourChangeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //nameLabel.text! = apiTwo("name")
        print(apiTwo)
    }
//    func populate(){
//
//    }
}

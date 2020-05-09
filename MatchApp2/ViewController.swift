//
//  ViewController.swift
//  MatchApp2
//
//  Created by Austin Keola Pascal Chang on 5/7/20.
//  Copyright © 2020 Austin Keola Pascal Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let model = CardModel()
    var cardsArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardsArray = model.getCards()
    }


}


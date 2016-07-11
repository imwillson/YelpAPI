//
//  ViewController.swift
//  YelpAPI2
//
//  Created by Willson Li on 7/11/16.
//  Copyright © 2016 Willson Li. All rights reserved.
//

import UIKit
import Foundation
import OAuthSwift
import SwiftyJSON

class ViewController: UIViewController {
    
    
    let client = YelpAPIClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //first parameter, allows for us to change up the search results
        let urlParams = [
            "location":"Chinatown",
            "term" :  "Restaurants"]
        
        
        client.searchPlacesWithParameters(urlParams, successSearch: { (data, response) in
            let json = JSON(data: data)
            print("SUCESS")
            print(json)
            }, failureSearch: { (error) in
                print("ERROR")
                print(error)
        })
        
    }
    
    
    // do i need this?
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

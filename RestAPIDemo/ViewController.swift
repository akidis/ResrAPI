//
//  ViewController.swift
//  RestAPIDemo
//
//  Created by Andrey Kiselev on 26.04.17.
//  Copyright © 2017 Andrey Kiselev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cashCource()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func cashCource () {
        
        
        let urlJson = URL(string: "http://www.cbr-xml-daily.ru/daily_json.js")
        
        let task = URLSession.shared.dataTask(with: urlJson!) { (data, responce, error) in
            
            if error != nil {
                
                print("error!")
                
            } else {
                
                if let mydata = data {
                    
                    do {
                        
                        //Array of data____________________________________________
                        
                        let myJson = try JSONSerialization.jsonObject(with: mydata, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        //_________________________________________________________
        
                        
                        if let valute = myJson["Valute"] as AnyObject? {
                            
                            if let aud = valute["AUD"] as! NSDictionary? {
                                
                                if let valueAUD = aud["Value"] as! NSNumber?, let previousAUD = aud["Previous"] as! NSNumber? {
                                    
                                    print(valueAUD, previousAUD)
                                    
                                }
                                
                            }
                        }
                        
                    } catch {
                        
                        //catch error
                        
                    }
                }
                
            }
            
        }
        
        task.resume()
    
    }
    

}


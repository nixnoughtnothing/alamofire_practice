//
//  ViewController.swift
//  alamoFirePractice
//
//  Created by nixnoughtnothing on 3/31/15.
//  Copyright (c) 2015 Sttir Inc. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let req = request(.GET,"http://i.imgur.com/iZbk1kW.gif")
            req.response(){(request,response,data,error) in
            
            if error == nil {
                dispatch_async(dispatch_get_main_queue()){() in
                    self.imageView.image = UIImage(data: data as NSData)
                }
            }
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


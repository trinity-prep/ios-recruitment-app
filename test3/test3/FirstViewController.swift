//
//  FirstViewController.swift
//  test3
//
//  Created by StudentAdmin on 12/15/16.
//  Copyright © 2016 StudentAdmin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

   
    @IBOutlet weak var mainImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignbackground()
        //let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        //backgroundImage.image = UIImage(named: "Assets.xcassets/bell_tower.jpg")
        //self.view.sendSubview(toBack: backgroundImage)
    }
    
    func assignbackground(){
        print("hello")
        let background = UIImage(named: "bell_tower")        
        mainImageView.image = background
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


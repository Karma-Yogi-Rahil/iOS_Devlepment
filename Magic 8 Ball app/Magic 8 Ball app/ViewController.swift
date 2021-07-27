//
//  ViewController.swift
//  Magic 8 Ball app
//
//  Created by Rahil Mehta on 27/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ballImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func ask(_ sender: Any) {
        
        let ballImage_array = [ #imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball4")]
        
        ballImage.image = ballImage_array.randomElement()
        
    }

    
    
    

}



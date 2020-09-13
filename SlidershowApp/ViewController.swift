//
//  ViewController.swift
//  SlidershowApp
//
//  Created by Hiroumi Shimada on 2020/09/01.
//  Copyright © 2020 Hiroumi Shimada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageData: UIImageView!
    
    let imageArray = [
        "tozan_trekking_man.png",
        "senkou_hanabi_boy.png",
        "drink_beer_yukata_man.png"
    ]
    var imageIndex:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    
    
    @IBOutlet weak var nextoutlet: UIButton!
    @IBAction func next(_ sender: Any)
        
    {
        imageIndex += 1
        
        if imageIndex == 3 {
            imageIndex = 0
        }
        
        
        let arrayIndex = imageArray[imageIndex]
        imageData.image = UIImage(named: arrayIndex)
    }
    
    
    
    @IBOutlet weak var backoutlet: UIButton!
    @IBAction func back(_ sender: Any) {
        if imageIndex == 0{
            imageIndex = 2
        }
        else {
            imageIndex -= 1
            
        }
        
        
        let arrayIndex = imageArray[imageIndex]
        imageData.image =  UIImage(named: arrayIndex)
    }
    
    
    var timer: Timer!
    
    @IBOutlet weak var startStop: UIButton!
   
    @IBAction func startStop(_ sender: Any) {
        
        
        
        if (timer == nil){

            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            
            startStop.setTitle("停止", for: .normal)
           nextoutlet.isEnabled = false
           backoutlet.isEnabled = false
            
        }else{
            timer.invalidate()
            
            timer = nil
            
            startStop.setTitle("再生", for: .normal)
            nextoutlet.isEnabled = true
            backoutlet.isEnabled = true
        }
        
    }
    @objc func updateTimer(_ timer: Timer){
        if imageIndex == 2{
            imageIndex = 0
        }
        else {
            imageIndex += 1
        }
        let arrayIndex = imageArray[imageIndex]
        imageData.image =  UIImage(named: arrayIndex)
        
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.resultIndex = self.imageIndex
         timer?.invalidate()
        
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
         timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
    }
   
    


    
    
}













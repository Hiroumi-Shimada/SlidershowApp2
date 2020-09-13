//
//  ResultViewController.swift
//  SlidershowApp
//
//  Created by Hiroumi Shimada on 2020/09/09.
//  Copyright © 2020 Hiroumi Shimada. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultImage: UIImageView!
    
    var resultIndex:Int = 0
    
    let imageArray = [
        "tozan_trekking_man.png",
        "senkou_hanabi_boy.png",
        "drink_beer_yukata_man.png"
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()

    let resultArray = imageArray[resultIndex]
        resultImage.image = UIImage(named: resultArray)
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

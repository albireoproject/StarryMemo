//
//  ViewController.swift
//  StarryMemo
//
//  Created by Hongsun Yoon, M.D. on 11/11/14.
//  Copyright (c) 2014 Hongsun Yoon, M.D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var astroImageThumb: UIImageView!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var dateTextLabel: UILabel!
    @IBOutlet weak var memoTextLabel: UILabel!
    @IBOutlet weak var quoteTextLabel: UILabel!
    
    var myPhotos:[StarryObject] = []
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var objectOne = StarryObject()
        objectOne.imageOfPhoto = UIImage(named: "ngc7023_20140803.png")
        objectOne.titleOfPhoto = "NGC 7023"
        objectOne.dateOfPhoto = "August 3, 2014"
        objectOne.memoOfPhoto = "0.5m Dall-Kirkham f/6.8, Canary Island, Spain"
        
        var objectTwo = StarryObject()
        objectTwo.imageOfPhoto = UIImage(named: "jupiter_20121002.png")
        objectTwo.titleOfPhoto = "Jupiter"
        objectTwo.dateOfPhoto = "October 2, 2012"
        objectTwo.memoOfPhoto = "12-inch Dall-Kirkham f11.9, Hongcheon, Korea"
        
        var objectThree = StarryObject()
        objectThree.imageOfPhoto = UIImage(named: "c2014e2jacques_20140729.png")
        objectThree.titleOfPhoto = "Comet C/2014 E2, Jacques"
        objectThree.dateOfPhoto = "July 29, 2014"
        objectThree.memoOfPhoto = "0.5m Dall-Kirkham f/6.8, Canary Island, Spain"
        
        var objectFour = StarryObject()
        objectFour.imageOfPhoto = UIImage(named: "saturn_20130504.png")
        objectFour.titleOfPhoto = "Saturn"
        objectFour.dateOfPhoto = "May 4, 2014"
        objectFour.memoOfPhoto = "12-inch Dall-Kirkham f11.9, Hongcheon, Korea"
        
        var objectFive = StarryObject()
        objectFive.imageOfPhoto = UIImage(named: "barnard33_20141012.png")
        objectFive.titleOfPhoto = "Barnard 33, Horsehead Nebula"
        objectFive.dateOfPhoto = "October 12, 2014"
        objectFive.memoOfPhoto = "0.5m Dall-Kirkham f/6.8, Canary Island, Spain"
        
        var objectSix = StarryObject()
        objectSix.imageOfPhoto = UIImage(named: "ngc1977_20141018.png")
        objectSix.titleOfPhoto = "NGC 1977"
        objectSix.dateOfPhoto = "October 18, 2014"
        objectSix.memoOfPhoto = "0.5m Dall-Kirkham f/6.8, Canary Island, Spain"
        
        var objectSeven = StarryObject()
        objectSeven.imageOfPhoto = UIImage(named: "ngc281_20141018.png")
        objectSeven.titleOfPhoto = "NGC 281"
        objectSeven.dateOfPhoto = "October 18, 2014"
        objectSeven.memoOfPhoto = "0.5m Dall-Kirkham f/6.8, Canary Island, Spain"
        
        
        myPhotos += [objectOne, objectTwo, objectThree, objectFour, objectFive, objectSix, objectSeven]
        
        // Initial Value
        astroImageThumb.image = objectOne.imageOfPhoto
        titleTextLabel.text = objectOne.titleOfPhoto
        dateTextLabel.text = objectOne.dateOfPhoto
        memoTextLabel.text = objectOne.memoOfPhoto
        quoteTextLabel.text = objectOne.randomQuote()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
        var randomIndex: Int
        
        do {randomIndex = Int(arc4random_uniform(UInt32(myPhotos.count)))
        } while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        let currentPhoto = myPhotos[currentIndex]
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.astroImageThumb.image = currentPhoto.imageOfPhoto
            self.titleTextLabel.text = currentPhoto.titleOfPhoto
            self.dateTextLabel.text = currentPhoto.dateOfPhoto
            self.memoTextLabel.text = currentPhoto.memoOfPhoto
            self.quoteTextLabel.text = currentPhoto.randomQuote()
            
            }, completion: {
                (finished: Bool) -> () in
        })
        
    }

}


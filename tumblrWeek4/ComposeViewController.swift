//
//  ComposeViewController.swift
//  tumblrWeek4
//
//  Created by Monith Ilavarasan on 11/7/16.
//  Copyright © 2016 Monith Ilavarasan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    
    @IBOutlet var fullView: UIView!
    
    
    @IBOutlet weak var textIcon: UIImageView!
    
    @IBOutlet weak var photoIcon: UIImageView!
    
    @IBOutlet weak var quoteIcon: UIImageView!

    @IBOutlet weak var linkIcon: UIImageView!
    
    @IBOutlet weak var chatIcon: UIImageView!
    
    @IBOutlet weak var videoIcon: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fullView.alpha = 0.95;

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        textIcon.center.y = textIcon.center.y + 447
        photoIcon.center.y = photoIcon.center.y + 447
        quoteIcon.center.y = quoteIcon.center.y + 447
        
        linkIcon.center.y = linkIcon.center.y + 293
        chatIcon.center.y = chatIcon.center.y + 293
        videoIcon.center.y = videoIcon.center.y + 293
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let animSpeed = 0.4
        
        //animate text icon
        UIView.animate(withDuration: animSpeed,delay:0.2,animations: {
            // This causes first view to fade in and second view to fade out
           self.textIcon.center.y = self.textIcon.center.y - 447
        })
        
        //animate photo icon
        UIView.animate(withDuration: animSpeed, animations: {
            // This causes first view to fade in and second view to fade out
            self.photoIcon.center.y = self.photoIcon.center.y - 447
        })
        
        //animate quote icon
        UIView.animate(withDuration: animSpeed,delay: 0.2, animations: {
            // This causes first view to fade in and second view to fade out
            self.quoteIcon.center.y = self.quoteIcon.center.y - 447
        })
        
        //animate link icon
        UIView.animate(withDuration: animSpeed,delay: 0.2, animations: {
            // This causes first view to fade in and second view to fade out
            self.linkIcon.center.y = self.linkIcon.center.y - 293
        })
        
        //animate chat icon
        UIView.animate(withDuration: animSpeed,delay : 0.1, animations: {
            // This causes first view to fade in and second view to fade out
            self.chatIcon.center.y = self.chatIcon.center.y - 293
        })
        
        //animate video icon
        UIView.animate(withDuration: animSpeed,delay: 0.2, animations: {
            // This causes first view to fade in and second view to fade out
            self.videoIcon.center.y = self.videoIcon.center.y - 293
        })
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTapNevermind(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
   

}

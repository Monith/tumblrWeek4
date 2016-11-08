//
//  TabBarViewController.swift
//  tumblrWeek4
//
//  Created by Monith Ilavarasan on 11/7/16.
//  Copyright © 2016 Monith Ilavarasan. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountViewController")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        //keep track of the previous button pressed
        let previousIndex = selectedIndex
        
        //selectedIndex set to the tag value of which ever button was tapped.
        selectedIndex = sender.tag
        
        //previousIndex value set to access the previous button and set it to the non-selected state.
        buttons[previousIndex].isSelected = false
        
        //Used the previousIndex to access the previous ViewController from the viewControllers array.
        let previousVC = viewControllers[previousIndex]
        
        //Remove the previous ViewController
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //access the current selected button and set it to the selected state.
        sender.isSelected = true
        
        //selectedIndex to access the current ViewController from the viewControllers array
        let vc = viewControllers[selectedIndex]
        
        //Added the new ViewController. (Calls the viewWillAppear method of the ViewController you are adding)
        addChildViewController(vc)
        
        //Adjusted the size of the ViewController view you are adding to match the contentView of your tabBarViewController and add it as a subView of the contentView.
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        //Call the viewDidAppear method of the ViewController you are adding using didMove(toParentViewController: self)
        vc.didMove(toParentViewController: self)

        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

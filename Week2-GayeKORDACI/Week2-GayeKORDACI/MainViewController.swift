//
//  ViewController.swift
//  Week2-GayeKORDACI
//
//  Created by Gaye Kordacı Deprem on 30.05.2022.
//

import UIKit

class MainViewController: UIViewController {

    // Button navigation to Second View Controller touch listener
    @IBAction func nextButtonTouchListener(_ sender: UIButton) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        self.present(vc, animated: true)
        
        
    }
    //Next button initiated
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //We are setting button title for Next Page
        nextButton.setTitle("Next Page", for: .normal)
    }


}


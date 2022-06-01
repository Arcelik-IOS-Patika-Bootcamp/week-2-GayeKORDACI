//
//  ViewController.swift
//  Week2-GayeKORDACI
//
//  Created by Gaye Kordacı Deprem on 30.05.2022.
//

import UIKit

class MainViewController: UIViewController, NumberControlDelegate {
    func numberValidated(number: Int) {
        informationLabel.text = "Number \(number) is validated"
    }
    
    func operationCancelled() {
        informationLabel.text = "Operation cancelled"

    }
    
    
    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    // Button navigation to Second View Controller touch listener
    @IBAction func nextButtonTouchListener(_ sender: UIButton) {
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        //Generated random numbers to be sent to the second view
        let firstNumber = Int(firstNumberLabel.text ?? "0")
        let secondNumber =  Int(secondNumberLabel.text ?? "0")
        
        vc.number = firstNumber! + secondNumber!
        vc.delegate = self
    
        
        self.present(vc, animated: true)
        
    }
    //Next button initiated
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //We are setting button title for Next Page
        nextButton.setTitle("Next Page", for: .normal)
        
        informationLabel.text = ""
        
        let firstNumber = Int.random(in: 0...100)

        let secondNumber = Int.random(in: 0...100)

        firstNumberLabel.text = "\(firstNumber)"
        
        secondNumberLabel.text = "\(secondNumber)"

    }

}


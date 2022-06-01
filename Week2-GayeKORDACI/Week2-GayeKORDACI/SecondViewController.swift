//
//  SecondViewController.swift
//  Week2-GayeKORDACI
//
//  Created by Gaye Kordacı Deprem on 31.05.2022.
//

import UIKit

protocol NumberControlDelegate {
    func numberValidated(number: Int)
    func operationCancelled()
}

class SecondViewController: UIViewController {
    @IBAction func yesButtonTouchListener(_ sender: UIButton) {
        
        self.delegate?.numberValidated(number: number)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func noButtonTouchListener(_ sender: UIButton) {
        
        self.delegate?.operationCancelled()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var ResultLabel: UILabel!
    var delegate: NumberControlDelegate?
    var number: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        ResultLabel.text = "Randomly generated 2 number total is \(number), is it OK? "
    }
}

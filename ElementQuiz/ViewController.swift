//
//  ViewController.swift
//  ElementQuiz
//
//  Created by 9i on 1/18/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var answerLabel: UILabel!
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    func updateElement() {
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        answerLabel.text = "?"
    }
    
    
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]

    }
    
    
    @IBAction func next(_ sender: Any) {
        currentElementIndex += 1
        
        if currentElementIndex == elementList.count
        {
            currentElementIndex = 0
        }
        updateElement()

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


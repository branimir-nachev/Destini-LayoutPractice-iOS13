//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(viewStory: currentStory)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle
        let nextStory = nextStory(userChoice: userChoice!)
        updateUI(viewStory: nextStory)
    }
    
    func updateUI(viewStory : Story) {
        storyLabel.text = viewStory.title
        choice1Button.setTitle(viewStory.choice1, for: .normal)
        choice2Button.setTitle(viewStory.choice2, for: .normal)
    }

}


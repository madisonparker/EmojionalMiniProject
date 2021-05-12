//
//  ViewController.swift
//  EmojionalMiniProject
//
//  Created by Madison Parker on 5/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


@IBAction func showMessage(sender: UIButton) {
    let selectedEmotion = sender.titleLabel?.text
    

    let options = customMessages[emojis[selectedEmotion!]!]!.count
    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0 ... options-1)]
    

    let alertController = UIAlertController(title:selectedEmotion, message: emojiMessage, preferredStyle:UIAlertController.Style.alert)
    
    
    alertController.addAction(UIAlertAction(title: "Choose Again", style: UIAlertAction.Style.default, handler: nil))
    
    present(alertController, animated: true, completion: nil)
}

    let emojis = ["🤪": "wack", "😖": "stressed", "😭": "ugly crying", "😃": "i love life"]
    
    let customMessages = [
        "wack": ["me too sis", "ahhh!", "lol you're so silly"],
        "stressed": ["time for some chocolate!", "take a deeeeep breathe"],
        "ugly crying": ["take it one day at a time", "aw, so sad!"],
        "i love life": ["YUS QUEEN", "killing the game", "good for you:)"]
    
    ]
    
}

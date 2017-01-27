//
//  DetailViewController.swift
//  Emoji Dictionary
//
//  Created by Nicolas Roy on 1/24/17.
//  Copyright © 2017 Nick's Basement. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var newEmoji = Emoji();
    var Label = "";
    
    @IBOutlet weak var EmojiImg: UILabel!
    
    @IBOutlet weak var EmojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EmojiImg.text = newEmoji.EmojiIcon;
        EmojiLabel.text = newEmoji.Definition;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

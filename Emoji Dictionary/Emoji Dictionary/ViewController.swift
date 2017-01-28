//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Nicolas Roy on 1/24/17.
//  Copyright © 2017 Nick's Basement. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!
    
    var randArray: [String] = ["😁","😜","😡","😳"];
    var Emojis: [Emoji] = [];
    
    // View initalization
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self;
        TableView.delegate = self;
        Emojis = MakeEmojiArray();
    }
    
    // Give the table the number of rows it needs to render
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return randArray.count;
    }
    
    // Setting up each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let i: Int = indexPath.row;
        let cell: UITableViewCell = UITableViewCell();
        cell.textLabel?.text = "\(Emojis[i].EmojiIcon)";
        return cell;
    }
    
    // OnRowSelect
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let i: Int = indexPath.row;
        performSegue(withIdentifier: "MainToDetailSegue", sender: Emojis[i]);
    }
    
    // Method handling the passing of data from one view to the next
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as! DetailViewController;  // get the view controller we are transferring to
        next.newEmoji = sender as! Emoji;   // Set the destination variable to what we're passing in
    }
    
    func MakeEmojiArray() -> [Emoji] {
        var array: [Emoji] = [];
        for i in randArray {
            let emoji = Emoji();
            emoji.EmojiIcon = i;
            emoji.Definition = "This is \(i)";
            array.append(emoji);
        }
        return array;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


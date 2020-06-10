//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Дмитрий Данилин on 10.06.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    @IBOutlet weak var emojiTextF: UITextField!
    @IBOutlet weak var nameTextF: UITextField!
    @IBOutlet weak var descriptionTextF: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
    }
}

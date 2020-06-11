//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Дмитрий Данилин on 10.06.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavorit: false)
    
    @IBOutlet weak var emojiTextF: UITextField!
    @IBOutlet weak var nameTextF: UITextField!
    @IBOutlet weak var descriptionTextF: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButton()
    }
    
    private func updateSaveButton() {
        let emojiText = emojiTextF.text ?? ""
        let nameText = nameTextF.text ?? ""
        let descriptionText = descriptionTextF.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "save" else { return }
        let emoji = emojiTextF.text ?? ""
        let name = nameTextF.text ?? ""
        let description = descriptionTextF.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavorit: self.emoji.isFavorit)
    }
}

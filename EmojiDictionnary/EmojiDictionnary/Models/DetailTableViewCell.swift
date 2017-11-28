//
//  DetailTableViewController.swift
//  EmojiDictionnary
//
//  Created by Adrien Meyer on 28/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var lbEmoji: UILabel!
    
    @IBOutlet private weak var lbDescription: UILabel!
    
    @IBOutlet private weak var lbUsage: UILabel!
    
    
    func updateWithEmoji(emoji: Emoji)
    {
        self.lbEmoji.text = String(emoji.symbol)
        self.lbDescription.text = emoji.description
        self.lbUsage.text = emoji.usage
    }

}

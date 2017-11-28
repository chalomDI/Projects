//
//  ViewController.swift
//  EmojiDictionnary
//
//  Created by Adrien Meyer on 28/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class ViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    @IBAction func add(_ sender: Any) {
        performSegue(withIdentifier: "Add", sender: nil)
    }
    
    
    var emojis: [Emoji] = [Emoji(symbol: Character("😀"), name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"), Emoji(symbol: Character("☹️"), name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"), Emoji(symbol: Character("😍"), name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.TableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "Cell")
        self.tableView.register(UINib(nibName: "DetailTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "Cell")
    }
    @IBOutlet weak var tableView: UITableView!
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: DetailTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DetailTableViewCell)!
    
    let emoji: Emoji = self.emojis[indexPath.row]
    
    cell.updateWithEmoji(emoji: emoji)
//
//        cell.textLabel?.text = String(emoji.symbol)
//        cell.detailTextLabel?.text = emoji.description
//
        return cell
    }
    
}


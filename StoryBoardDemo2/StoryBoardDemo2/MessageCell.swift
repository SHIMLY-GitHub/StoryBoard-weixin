//
//  MessageCell.swift
//  StoryBoardDemo2
//
//  Created by shimly on 16/5/30.
//  Copyright © 2016年 shimly. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var message: UIView!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
    }
    
    func bindCellData(name:String,message:String,time:String){
        self.name.text = name;
        self.time.text = time;
        self.messageLabel.text = message;
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  MessageModel.swift
//  StoryBoardDemo2
//
//  Created by shimly on 16/5/30.
//  Copyright © 2016年 shimly. All rights reserved.
//

import Foundation

class MessageModel {
    var headerName : String  = "";
    var name       : String  = "";
    var message    : String  = "";
    var time       : String  = "";
    
    init(header:String,name:String,message:String,time:String){
        self.headerName = header;
        self.name = name;
        self.message = message;
        self.time = time;
        
    }
}
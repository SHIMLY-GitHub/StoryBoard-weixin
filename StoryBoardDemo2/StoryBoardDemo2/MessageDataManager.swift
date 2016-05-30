//
//  MessageDataManager.swift
//  StoryBoardDemo2
//
//  Created by shimly on 16/5/30.
//  Copyright © 2016年 shimly. All rights reserved.
//

import UIKit

class MessageDataManager: NSObject {
    
  internal  var dataSource  =  [MessageModel]();
    
    

    
    override init() {
        
        
        let model1 = MessageModel(header: "header", name: "钱多多", message: "恩", time: "下午1:10");
        let model2 = MessageModel(header: "header", name: "刘博文", message: "好吧", time: "上午11:10");
        let model3 = MessageModel(header: "header", name: "ZPY", message: "好.", time: "昨天");
        
         dataSource.append(model1);
         dataSource.append(model2);
         dataSource.append(model3);
        
    }
    
    

}

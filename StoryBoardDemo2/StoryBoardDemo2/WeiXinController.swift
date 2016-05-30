//
//  WeiXinController.swift
//  StoryBoardDemo2
//
//  Created by shimly on 16/5/27.
//  Copyright © 2016年 shimly. All rights reserved.
//

import UIKit

class WeiXinController: UIViewController,UITableViewDataSource,UITableViewDelegate{

   
    internal var dataSource = [MessageModel]();
    
    let manager = MessageDataManager();
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "微信";
        self.automaticallyAdjustsScrollViewInsets = false;
       
        self.dataSource = manager.dataSource;
       
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count;
    }
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
     
        let cell = tableView.dequeueReusableCellWithIdentifier("MessageCell", forIndexPath: indexPath) as! MessageCell;
        
        let messageModel = self.dataSource[indexPath.row];
        
        cell.bindCellData(messageModel.name, message: messageModel.message, time: messageModel.time);
        return cell;
  
    }
 
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        let row = self.tableView.indexPathForSelectedRow!.row;
        
        let messageModel = self.dataSource[row];
        
        let detailController = segue.destinationViewController as! MessageDetailController;
        detailController.title = messageModel.name;
        
        
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

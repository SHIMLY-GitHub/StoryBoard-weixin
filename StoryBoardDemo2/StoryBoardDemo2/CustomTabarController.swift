//
//  CustomTabarController.swift
//  StoryBoardDemo2
//
//  Created by shimly on 16/5/27.
//  Copyright © 2016年 shimly. All rights reserved.
//

import UIKit

class CustomTabarController: UITabBarController {

    
    var selectButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

      let rect =   self.tabBar.frame;
        self.tabBar.hidden = true;
    
        self.tabBar.removeFromSuperview();
        let  customView = UIView(frame: rect);
        customView.backgroundColor = UIColor(colorLiteralRed: 246.0 / 255.0, green: 246.0/255.0, blue: 247.0/255.0, alpha: 1);
        self.view.addSubview(customView);
        
        for var i=0;i<self.viewControllers?.count;i++
        {
            
            let button = UIButton();
          
            
            let width  = customView.frame.size.width / CGFloat((self.viewControllers?.count)!);
            
            let x = CGFloat(i) * width;
            
            button.frame = CGRectMake(x,0,width,customView.frame.size.height);
            
            let image = UIImage(named: "Tabar\(i)")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            let unImage = UIImage(named: "UnTabar\(i)")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            
            button.setImage(image, forState: UIControlState.Selected)
            
            button.setImage(unImage, forState: UIControlState.Normal)
            
            button.adjustsImageWhenHighlighted = false;
            button.addTarget(self, action: "itemSelect:", forControlEvents: UIControlEvents.TouchUpInside);
            customView.addSubview(button);
            button.tag=i;
            
            if (i==0)
            {
                button.selected = true;
                self.selectButton = button;
                
            }
            
        }
        
    }
    func itemSelect(button:UIButton)
    {
        self.selectButton.selected = false;
        button.selected = true;
        
        self.selectButton = button;
        self.selectedIndex = button.tag;
        
        
        
    }
    
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

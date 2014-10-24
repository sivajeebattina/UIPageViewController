//
//  NextPageViewController.swift
//  PageViewControllerSwift
//
//  Created by pcs20 on 10/24/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

import UIKit

class NextPageViewController: UIViewController {
    
    @IBOutlet var imageView:UIImageView!

    var pageNumber:Int=0
    var imagesNamesArray:NSArray=NSArray(objects: "1.png","2.jpg","3.jpeg","4.png")
    var selectedImage:NSString=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(pageNumber)
        selectedImage=imagesNamesArray[pageNumber] as NSString
      
       var selectedPageImage:AnyObject=UIImage(named: selectedImage)
        
       self.imageView.image=selectedPageImage as? UIImage
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

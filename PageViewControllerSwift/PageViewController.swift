//
//  PageViewController.swift
//  PageViewControllerSwift
//
//  Created by pcs20 on 10/24/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

import UIKit

protocol Hellowrold{
  func hai()

}
class PageViewController: UIViewController,UIPageViewControllerDataSource {
    
    var pageViewController:UIPageViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.pageViewController=UIPageViewController(transitionStyle: UIPageViewControllerTransitionStyle.Scroll, navigationOrientation: UIPageViewControllerNavigationOrientation.Horizontal, options: nil)
        
        self.pageViewController.view.frame=self.view.bounds
       self.pageViewController.dataSource = self
        
        
        var storyBoard=UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        
        var nextPage:NextPageViewController = storyBoard.instantiateViewControllerWithIdentifier("nextPage") as NextPageViewController
        
        var viewControllers=NSArray(object: nextPage)
        
        self.pageViewController.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
      
        self.pageViewController.didMoveToParentViewController(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewControllerAtIndex(index:Int)->NextPageViewController
    {
        var storyBoard=UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        
        var nextPage:NextPageViewController = storyBoard.instantiateViewControllerWithIdentifier("nextPage") as NextPageViewController

        nextPage.pageNumber=index
        
        
        return nextPage
    
    }

    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as NextPageViewController).pageNumber
        
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index=index-1
        
        
        
        return self.viewControllerAtIndex(index)
    }
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as NextPageViewController).pageNumber
        
        if index == NSNotFound {
            return nil
        }
        
        index=index+1
        
        
        
        if (index == 4) {
            return nil
        }
        
        return self.viewControllerAtIndex(index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
    {
    
       return 4
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return 0
    }

   
}

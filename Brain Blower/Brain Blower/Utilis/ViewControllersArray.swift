//
//  ViewControllersArray.swift
//  Brain Blower
//
//  Created by Rodrigo Candido on 15/10/2020.
//

import UIKit


/// This class set up and return a array of UIViewControllers to be included on the UITabBarController.setViewControllers
struct ViewControllersArray {
   
    private var cubeVC: CubeViewController {
        let vc = CubeViewController()
        vc.tabBarItem.title = "The Cube"
        vc.tabBarItem.image = UIImage(systemName: K.ItemImages.cube)
        vc.tabBarItem.selectedImage = UIImage(systemName: K.ItemImages.cubeSelected)
        return vc
    }
    
    private var memoryVC: MemoryViewController {
        let vc = MemoryViewController()
        vc.tabBarItem.title = "Memory"
        vc.tabBarItem.image = UIImage(systemName: K.ItemImages.memory)
        vc.tabBarItem.selectedImage = UIImage(systemName: K.ItemImages.memorySelected)
        return vc
    }
    
    private var simonVC: SimonViewController {
        let vc = SimonViewController()
        vc.tabBarItem.title = "SIMON"
        vc.tabBarItem.image = UIImage(systemName: K.ItemImages.simon)
        vc.tabBarItem.selectedImage = UIImage(systemName: K.ItemImages.simonSelected)
        return vc
    }
    
    private var wordsVC: WordSearchViewController {
        let vc = WordSearchViewController()
        vc.tabBarItem.title = "Word Search"
        vc.tabBarItem.image = UIImage(systemName: K.ItemImages.words)
        vc.tabBarItem.selectedImage = UIImage(systemName: K.ItemImages.wordsSelected)
        return vc
    }
    
    private var songVc: SongTouchViewController {
        let vc = SongTouchViewController()
        vc.tabBarItem.title = "Music Touch"
        vc.tabBarItem.image = UIImage(systemName: K.ItemImages.song)
        vc.tabBarItem.selectedImage = UIImage(systemName: K.ItemImages.songSelected)
        return vc
        
    }
    
    
    /// Array of UIViewControllers
    /// Each ViewController that will be included in the main TabBar must be instantiated
    /// and than passed through this method
    /// - Returns: [UIViewController]
    func array() -> [UIViewController] {
        return [cubeVC, memoryVC, simonVC, wordsVC, songVc]
    }
}

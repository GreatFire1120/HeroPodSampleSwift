//
//  ViewController.swift
//  Two
//
//  Created by Admin on 1/10/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class InitialViewController: UITableViewController {

    var storyboards:[[String]] = [
        [],
        ["Basic", "MusicPlayer", "Menu"],
        ["CityGuide", "ImageViewer", "ListToGrid", "ImageGallery"],
        ["LiveInjection", "Debug", "LabelTransform"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.item < storyboards[indexPath.section].count{
            let storyboardName = storyboards[indexPath.section][indexPath.item]
            let vc = viewController(forStoryboardName: storyboardName)
            present(vc, animated: true, completion: nil)
        }
    }
    
    func viewController(forStoryboardName:String) -> UIViewController{
        return UIStoryboard(name: forStoryboardName, bundle: nil).instantiateInitialViewController()!
    }
}


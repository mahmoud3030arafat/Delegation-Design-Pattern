//
//  forthViewController.swift
//  delegation pattern iti
//
//  Created by Mahmoud on 7/6/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class forthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var myLabel : UILabel={
            var label  = UILabel(frame: CGRect(x: 10, y: 0, width: 100, height: 50))
            label.text = "ios dev"
            label.textAlignment = .left
            label.font = UIFont(name: label.font.fontName, size: 30)
        
            label.textColor = .white
            return label
            
            
        }()
        let leftBarbtn = UIBarButtonItem(customView: myLabel)
        self.navigationItem.leftBarButtonItem?.style = .done
        self.navigationItem.leftBarButtonItem = leftBarbtn
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

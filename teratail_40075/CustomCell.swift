//
//  CustomCell.swift
//  teratail_40075
//
//  Created by Kentarou on 2016/07/05.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    var item: Model! {
        didSet {
            self.numberLabel.text = self.item.number
            self.titleLabel.text = self.item.title
            self.bodyLabel.text = self.item.body
            
            if let image1 = self.item.image1 {
                self.imageView1.image = image1
            } else {
                imageView1Height.constant = 0
                imageView1Bottom.constant = 0
            }
            
            if let image2 = self.item.image2 {
                self.imageView2.image = image2
            } else {
                imageView2Height.constant = 0
                imageView2Bottom.constant = 0
            }
            
            if let image3 = self.item.image3 {
                self.imageView3.image = image3
            } else {
                imageView3Height.constant = 0
                imageView3Bottom.constant = 0
            }
        }
    }
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBOutlet weak var imageView1Height: NSLayoutConstraint!
    @IBOutlet weak var imageView1Bottom: NSLayoutConstraint!
    
    @IBOutlet weak var imageView2Height: NSLayoutConstraint!
    @IBOutlet weak var imageView2Bottom: NSLayoutConstraint!
    
    @IBOutlet weak var imageView3Height: NSLayoutConstraint!
    @IBOutlet weak var imageView3Bottom: NSLayoutConstraint!
}

//
//  DetailViewController.swift
//  Tableviewdemo
//
//  Created by HigherVisibility on 01/12/2019.
//  Copyright © 2019 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var inatitute: UILabel!
    @IBOutlet weak var univeristy: UILabel!
    @IBOutlet weak var Description: UILabel!
    //
    var strname:String!
    var strinstitute:String!
    var strimg:UIImage!
    var struni:String!
    var strdesc:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = strname
        inatitute.text = strinstitute
        univeristy.text = struni
        Description.text = strdesc
        img1.image = strimg
    }
}

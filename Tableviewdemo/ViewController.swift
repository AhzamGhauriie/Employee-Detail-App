//
//  ViewController.swift
//  Tableviewdemo
//
//  Created by HigherVisibility on 30/11/2019.
//  Copyright © 2019 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

 
        
        var array1 = ["Alice Parker","Bob Jason","Maria Johnson","David George","Margarett Hugh","Nicole Ryan","Nas Daily","Jack Mason"]

    var array2  = ["Sr.Manager","Sr.Professor","Associate Professor","Assisstant Professor","Lecturer","Sr.Lecturer","Jr.Lecturer","Jr.Professor"];
    var arrimg:[UIImage] = [#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "img6"),#imageLiteral(resourceName: "img7"),#imageLiteral(resourceName: "img8")]
    var array3 = ["at Berkely University","at Cambridge University","at Oxford University","at Mussachusett Institute","at University of Florida","at Hardvard Univeristy","at University of California","at University of Waterloo"]
    var arrdescription = ["My name is Alice Parker and I am Sr.Manager. I graduated from the University of Dallas with a major in Literature and Science. I had been serving the students of Berkely University for the past three years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow.","My name is Bob Jason and I am Sr.Professor. I graduated from the University of Texas with a major in English. I had been teaching the students of the Prep-IIV in Cambridge University for the past two years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow and I will try my best to teach this good habit in your child as well.","My name is Maria Johnson and I am Associate Professor.I graduated from the University of Texas with a major in Literature and English and Maths. I had been teaching the students of the Prep-IV in  Oxford University for the past five years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow and I will try my best to teach this good habit in your child as well.","My name is david George and I am Assisstant Professor. I graduated from the University of Texas with a major in Programming and Science. I had been teaching the students of Science and Programming in Mussachusset Institute for the past five years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow and I will try my best to teach this good habit in your child as well.","My name is Margarett Hugh and I am Lecturer. I graduated from the Hardvard University with a major in Mathematics. I had been teaching the students of the nursery in  Berkely University for the past two years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow and I will try my best to teach this good habit in your child as well.","My name is Nicole Ryan and I am Sr.Lecturer. I graduated from the University of Waterloo with a major in Phsychology. I had been teaching the students of the Prep-III in Hardvard University for the past one years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow and I will try my best to teach this good habit in your child as well.","My name is Nas Daily. I am Jr.Lecturer. I graduated from the Cambridge University with a major in Database. I had been teaching the students of the Prep-IIV in Hardvard University for the past two years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow and I will try my best to teach this good habit in your child as well.","My name is Jack Mason and I am Jr.Professor. I graduated from the University of Dallas with a major in Computer. I had been teaching the students of the nursery in Texas University for the past nine years. I have a blog of my own and love reading books. I completely agree with the fact that reading helps you grow and I will try my best to teach this good habit in your child as well."]
    
    @IBOutlet weak var tbview: UITableView!
    override func viewDidLoad() {
         super.viewDidLoad()
        
}
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell=tableView.dequeueReusableCell(withIdentifier: "cell")as! TableViewCell
        
        cell.lbl1.text = array1[indexPath.row]
        cell.lbl2.text = array2[indexPath.row]
        cell.img.image = arrimg[indexPath.row]
        cell.lbl3.text = array3[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.strname=array1[indexPath.row]
        detail.strinstitute=array2[indexPath.row]
        detail.strimg=arrimg[indexPath.row]
        detail.struni=array3[indexPath.row]
        detail.strdesc=arrdescription[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            arrimg.remove(at: indexPath.row)
            arrdescription.remove(at: indexPath.row)
            tbview.deleteRows(at: [indexPath], with:.fade)
        }
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, 250, 20, 0)
        cell.layer.transform = transform
        UIView.animate(withDuration: 1.0){
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }
}


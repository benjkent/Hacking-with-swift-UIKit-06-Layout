//
//  DetailViewController.swift
//  Layouts
//
//  Created by benjamin kent on 4/13/21.
//

import UIKit

class DetailViewController: UIViewController {

    let metrics = ["labelHeight": 50]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let label1 = UILabel()
        // Don't generate any constraints based on view size and position
        label1.translatesAutoresizingMaskIntoConstraints = false
        // set the background color of the label
        label1.backgroundColor = UIColor.red
        // set the text inside of the label
        label1.text = "These"
        // set the size of the label based on the content ie: the text (letter height
        // We set a height of x pts in the VFL below
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.yellow
        label2.text = "Are"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.green
        label3.text = "The"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.blue
        label4.text = "VFL"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.lightGray
        label5.text = "Labels"
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        
        let viewsDictionary = ["label1": label1, "label2": label2,"label3": label3, "label4": label4, "label5": label5]
        
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        }
        
        // Using defined values for the height and spacing **Warning hard to adjust
        
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[label1(==50)]-[label2(==50)]-[label3(==50)]-[label4(==50)]-[label5(==50)]-(>=10)-|", options: [], metrics: nil, views: viewsDictionary))
        
        // Using a metric allows for value to be set as variables.
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[label1(labelHeight)]-[label2(labelHeight)]-[label3(labelHeight)]-[label4(labelHeight)]-[label5(labelHeight)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
    }
    

    
    

}

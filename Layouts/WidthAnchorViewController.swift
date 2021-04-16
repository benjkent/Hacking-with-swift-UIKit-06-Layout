//
//  Detail2ViewController.swift
//  Layouts
//
//  Created by benjamin kent on 4/13/21.
//

import UIKit

class WidthAnchorViewController: UIViewController {

    var previous: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let label1 = UILabel()
        // Don't generate any constraints based on view size and position
        label1.translatesAutoresizingMaskIntoConstraints = false
        // set the background color of the label
        label1.backgroundColor = UIColor.red
        // set the text inside of the label
        label1.text = "These"
        label1.textAlignment = .center
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
        label4.textColor = UIColor.lightGray
        label4.textAlignment = .center
        label4.text = "Width Anchors"
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
        
        var labels = [UILabel]()
        labels = [label1,label2,label3,label4,label5]
        
        for label in labels {
            
            // Makes the label conform to the width of the device
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            
            // Defining the height of each label specifically.
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            if let previous = previous {
                // we've got a previous label - so create a height constraint
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            
            // set the previous label "labelX" to labelX+1 for the next loop interation
            // label1 --> lable2 --> label3 ---> ...
            previous = label
        }
    }


}

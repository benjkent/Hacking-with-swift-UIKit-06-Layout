//
//  ViewController.swift
//  Layouts
//
//  Created by benjamin kent on 4/13/21.
//

import UIKit


class ViewController: UITableViewController {

    var layoutTopics = [String]()
    var layoutSubtopics = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Layouts the hard and not so hard way."
        
        layoutTopics += ["VFL","Constraints"]
        layoutSubtopics += ["Visual Formatting Language", "Auto Constraints"]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        layoutTopics.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        cell.textLabel?.text = layoutTopics[indexPath.row]
        cell.detailTextLabel?.text = layoutSubtopics[indexPath.row]
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if let vc = storyboard?.instantiateViewController(identifier: "VFL") as? DetailViewController{
                navigationController?.pushViewController(vc, animated: true)
                
                }
            } else {
                if let vc = storyboard?.instantiateViewController(identifier: "AC") as? Detail2ViewController{
                    navigationController?.pushViewController(vc, animated: true)
                }
            }
    }

}


//
//  AutoLayoutTableTableViewController.swift
//  Layouts
//
//  Created by benjamin kent on 4/15/21.
//

import UIKit

class AutoLayoutTableTableViewController: UITableViewController {

    var AutoLayoutVersions = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Auto layout anchor techniques"
        AutoLayoutVersions += ["Layout with width Anchor", "Layout with leading & trailing anchors", "Layout with safeAreaLayoutGuide"]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return AutoLayoutVersions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        cell.textLabel?.text = AutoLayoutVersions[indexPath.row]
        
        return cell

    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if let vc = storyboard?.instantiateViewController(identifier: "WAL") as? WidthAnchorViewController{
                navigationController?.pushViewController(vc, animated: true)
                
                }
        } else if indexPath.row == 1 {
               if let vc = storyboard?.instantiateViewController(identifier: "LTA") as? LeadTrailAnchorViewController{
                  navigationController?.pushViewController(vc, animated: true)}
        } else {
            if let vc = storyboard?.instantiateViewController(identifier: "SALG") as? SALGuideViewController {
                navigationController?.pushViewController(vc, animated: true)

            }
        }
    }
}

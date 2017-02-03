//
//  RosterTableViewController.swift
//  Testing
//
//  Created by Skylar Hansen on 2/3/17.
//  Copyright © 2017 Skylar Hansen. All rights reserved.
//

import UIKit

class RosterTableViewController: UITableViewController {

    var spurs: [Spur]  {
        let tony = Spur(name: "Tony Parker", number: 9)
        let kawhi = Spur(name: "Kawhi Leonard", number: 2)
        let manu = Spur(name: "Manu Ginobili", number: 20)
        
        return [tony, kawhi, manu]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spurs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "spurCell", for: indexPath)

        let spur = spurs[indexPath.row]
        cell.textLabel?.text = spur.name
        cell.detailTextLabel?.text = "\(spur.number)"

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}

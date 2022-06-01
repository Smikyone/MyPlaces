//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Жоооопаааа on 29.05.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    let placeName = ["Fарш","Gagawa","McDonald's"]

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return placeName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = placeName[indexPath.row]
        content.image = UIImage(named: placeName[indexPath.row])
        content.imageProperties.cornerRadius = cell.frame.size.height / 2
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - TableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 85
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
//    }

}

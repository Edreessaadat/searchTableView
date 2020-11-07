//
//  ViewController.swift
//  searchTableView
//
//  Created by Mohammad Edrees on 11/3/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    @IBOutlet var field: UITextField!
    
    var copyData = NewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return copyData.data.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = copyData.data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detail = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController{
            
           detail.areaOfProvince = copyData.areaArray[indexPath.row] + " km^2"
            detail.cityOfAfghanistan = copyData.data[indexPath.row]
            detail.pupolationOfProvince = copyData.populationArray[indexPath.row]

            self.navigationController?.pushViewController( detail, animated: true)
        }
    }
    
}


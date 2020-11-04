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
    
    var data = [String]()
    var filteredData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        setupData()
        
    }
    
    func setupData() {
        data.append("Kabul")
        data.append("Herat")
        data.append("Mazar")
        data.append("khost")
        data.append("Kandahar")
        data.append("Nimroz")
        data.append("Faryab")
        data.append("Badkhshan")
        data.append("Baghlan")
        data.append("Farah")
        data.append("Kapisa")
        data.append("Helmand")
        data.append("Wardak")
        data.append("Paktia")
        data.append("Paktika")
        data.append("parwan")
        data.append("Kunduz")
        data.append("badghiz")
        data.append("panjshir")
        data.append("Nooristan")
        data.append("Kunar")
        data.append("Laghman")
        data.append("Bamyan")
        data.append("Logar")


    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
   
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
   
    
}


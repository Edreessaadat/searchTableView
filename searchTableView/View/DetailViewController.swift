//
//  DetailViewController.swift
//  searchTableView
//
//  Created by Hamed Amiry on 07.11.2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var pupolationLabelTwo: UILabel!
    @IBOutlet weak var areaTwo: UILabel!
    
    @IBOutlet weak var pupolationLabeOne: UILabel!
    @IBOutlet weak var areaLabelOne: UILabel!
    
    var cityOfAfghanistan:String!
    var pupolationOfProvince:String!
    var areaOfProvince:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityLabel.text = cityOfAfghanistan
        pupolationLabeOne.text = pupolationOfProvince
        areaLabelOne.text = areaOfProvince
        

       
    }
    



}

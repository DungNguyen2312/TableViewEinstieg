//
//  ViewController.swift
//  TableViewEinstieg
//
//  Created by Tri Dung Nguyen / BBM3H19M on 08.11.21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
let myArray = ["Windows", "Linux", "Android", "iOS"]
    @IBOutlet weak var myTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell =  myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCell.textLabel?.text = myArray[indexPath.row]
        return myCell
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
    }
}


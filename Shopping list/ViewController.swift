//
//  ViewController.swift
//  Shopping list
//
//  Created by Bridger Strickland on 12/18/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{

    @IBOutlet weak var tableView: UITableView!
    
    var items : [Item] = []
    
            override func viewDidLoad()
            {
                tableView.dataSource = self
                
                let item1 = Item(theName:"Milk")
                let item2 = Item(theName:"Eggs")
                items = [item1, item2]
            }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
        return items.count
            }
    func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
            UITableViewCell
            {
                let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
                return cell
            }
    @IBAction func itemButton(_ sender: Any) {
    }
    //        super.viewDidLoad()
        // Do any additional setup after loading the view.
}




   

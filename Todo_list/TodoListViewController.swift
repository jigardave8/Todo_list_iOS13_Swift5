//
//  ViewController.swift
//  Todo_list
//
//  Created by jigar on 19/08/20.
//  Copyright © 2020 jigar. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

   let itemArray = ["Find Jigar", "Buy Jam", " Ketup"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    //MARK: -  TableView Datasource Methods
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    

}


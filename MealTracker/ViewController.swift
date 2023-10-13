//
//  ViewController.swift
//  MealTracker
//
//  Created by Everett Brothers on 10/13/23.
//

import UIKit

class ViewController: UITableViewController {

    var meals: [Meal] {
        return [
        Meal(name: "Breakfast", food: [Food(name: "Cereal", description: "Cinnamon Toast Crunch Cereal"), Food(name: "Doughnut", description: "Reams maple bar"), Food(name: "Hashbrowns", description: "Mcdonalds Hashbrowns")]),
        Meal(name: "Lunch", food: [Food(name: "Sandwich", description: "Ham and Cheese Sandwich"), Food(name: "Cookie", description: "Chocolate Chip Cookie"), Food(name: "Chips", description: "BBQ flavored chips")]),
        Meal(name: "Dinner", food: [Food(name: "Mac and Cheese", description: "Kraft Mac and Cheese Cheddar Flavor"), Food(name: "Brownie", description: "Triple Chocolate Brownie"), Food(name: "Steak", description: "TriTip steak")])
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)
        
        cell.textLabel?.text = meals[indexPath.section].food[indexPath.row].name
        cell.detailTextLabel?.text = meals[indexPath.section].food[indexPath.row].description
        
        return cell
    }
}


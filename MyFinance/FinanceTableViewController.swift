//
//  FinanceTableViewController.swift
//  MyFinance
//
//  Created by Guillermo Chumaceiro on 8/17/18.
//  Copyright © 2018 Chumaceiro. All rights reserved.
//

import UIKit

class FinanceTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return expences.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        // Downcast cell to be custom finance cell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FinanceTableViewCell

        // Configure the cell...
        cell.moneySpentLabel.text = String(expences[indexPath.row])
        cell.moneyLeftLabel.text = String(moneyLeft[indexPath.row])
        cell.totalMoneyLabel.text = String(totalMoney[indexPath.row])

        return cell
    }
    
    // This is a temporary data structure to test cells
    var expences = [10, 20 ,30, 10, 45, 10.2]
    var moneyLeft = [100.0, 40, 20, 10, 0, -10]
    var totalMoney = [10, 30, 60, 70, 115, 125.2]
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view. (In this case we will use it to delete cell)
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            expences.remove(at: indexPath.row)
            moneyLeft.remove(at: indexPath.row)
            totalMoney.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showFinanceDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! FinanceDetailViewController
                destinationController.spent = String(expences[indexPath.row])
                destinationController.moneyLeft = String(moneyLeft[indexPath.row])
                destinationController.total = String(totalMoney[indexPath.row])
            }
        }
    }

}

//
//  FinanceDetailViewController.swift
//  MyFinance
//
//  Created by Guillermo Chumaceiro on 8/17/18.
//  Copyright © 2018 Chumaceiro. All rights reserved.
//

import UIKit

class FinanceDetailViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var conceptLabel: UILabel!
    @IBOutlet weak var spentLabel: UILabel!
    @IBOutlet weak var moneyLeftLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    var date = ""
    var concept = ""
    var spent = ""
    var moneyLeft = ""
    var total = ""
    var comment = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateLabel.text = date
        conceptLabel.text = concept
        spentLabel.text = spent
        moneyLeftLabel.text = moneyLeft
        totalLabel.text = total
        commentLabel.text = comment
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

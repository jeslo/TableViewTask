//
//  ListViewController.swift
//  TableViewTask
//
//  Created by Joe on 29/03/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var bankTable: UITableView!
    
    var testTransPerDate:[CATransactionViewModel] =
        [CATransactionViewModel(description: "ATM Cash withdrawal",
                                transactionCurrency: "06:00:00",
                                transactionAmount: "5400",
                                billingCurrency: "₹",
                                billingAmount: "3456",
                                debitCredit: "£",
                                dtate: "666",
                                time: "1"),
         CATransactionViewModel(description: "MOB/Mobile/Recharge",
                                transactionCurrency: "11:00:00",
                                transactionAmount: "27/05/2019",
                                billingCurrency: "₹",
                                billingAmount: "5400",
                                debitCredit: "£",
                                dtate: "+300",
                                time: "1"),
         CATransactionViewModel(description: "Fast Cash ATM",
                                transactionCurrency: "11:00:00",
                                transactionAmount: "27/05/2019",
                                billingCurrency: "₹",
                                billingAmount: "5300",
                                debitCredit: "£",
                                dtate: "+800",
                                time: "0"),
         CATransactionViewModel(description: "Amazon/Pay",
                                transactionCurrency: "12:00:00",
                                transactionAmount: "27/05/2019",
                                billingCurrency: "$",
                                billingAmount: "4300",
                                debitCredit: "£",
                                dtate: "+400",
                                time: "1"),
         CATransactionViewModel(description: "Mobile Recharge",
                                transactionCurrency: "09:00:00",
                                transactionAmount: "27/05/2019",
                                billingCurrency: "₹",
                                billingAmount: "7300",
                                debitCredit: "£",
                                dtate: "+600",
                                time: "0"),
         CATransactionViewModel(description: "ATM withdrawal",
                                transactionCurrency: "03:00:00",
                                transactionAmount: "27/05/2019",
                                billingCurrency: "₹",
                                billingAmount: "3100",
                                debitCredit: "£",
                                dtate: "+260",
                                time: "0")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.bankTable.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        self.bankTable.delegate = self
        self.bankTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  self.testTransPerDate.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bankCell = self.bankTable.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BankDetailsCell
        return bankCell
    }
}

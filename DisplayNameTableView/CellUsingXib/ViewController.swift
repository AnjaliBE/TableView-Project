//
//  ViewController.swift
//  CellUsingXib
//
//  Created by Mac on 16/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var studentTableView: UITableView!
    
     var name = "Anjali"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentTableView.dataSource = self
        studentTableView.delegate = self
         let nibName = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(nibName, forCellReuseIdentifier: "StudentTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = self.studentTableView.dequeueReusableCell(withIdentifier:"StudentTableViewCell" )as? StudentTableViewCell
        else{
            return UITableViewCell()
        }
        cell.nameLabel.text = name
        return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}


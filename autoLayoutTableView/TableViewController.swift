//
//  TableViewController.swift
//  autoLayoutTableView
//
//  Created by ibrahim doğan on 5.10.2018.
//  Copyright © 2018 ibrahimdn. All rights reserved.
//

import UIKit
import SnapKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.title = "AutoLayout TableView"
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "id123")
        //tableView.rowHeight = UITableView.automaticDimension
        //tableView.estimatedRowHeight = 300

       /* tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }*/
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id123", for: indexPath) as! TableViewCell
        
        cell.contentView.addSubview(cell.picture)
        cell.contentView.addSubview(cell.label)
        
        cell.picture.contentMode = .scaleAspectFit
        cell.picture.image = UIImage(named: "image.png")
        cell.picture.snp.makeConstraints { (make) in
            make.left.equalTo(cell.contentView.snp_leftMargin)
            make.bottom.equalTo(cell.contentView.snp_bottomMargin)
            make.top.equalTo(cell.contentView.snp_topMargin)
            make.height.equalTo(cell.contentView.bounds.height).priority(.high)
            make.width.equalTo(cell.contentView.bounds.width * 0.3)

        }
        
        
        cell.label.font = UIFont.systemFont(ofSize: 20)
        cell.label.text = "İzmir - Buca - Konak - Bornova"
        cell.label.textAlignment = .center
        cell.label.numberOfLines = 0
        cell.label.lineBreakMode = .byCharWrapping
        cell.label.layer.borderWidth = 2
        cell.label.layer.cornerRadius = 10
        cell.label.layer.borderColor = UIColor.darkGray.cgColor
        let maxSize = CGSize(width: view.frame.size.width, height: .greatestFiniteMagnitude)
        let size = cell.label.sizeThatFits(maxSize)
        cell.label.snp.makeConstraints { (make) in
            make.left.equalTo(cell.picture.snp_right).offset(10)
            make.top.equalTo(cell.contentView.snp_topMargin)
            make.bottom.equalTo(cell.contentView.snp_bottomMargin)
            make.right.equalTo(cell.contentView.snp_rightMargin)
            //make.height.equalTo(size.height)
            //make.width.equalTo(size.width)
            
        }
    
       
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

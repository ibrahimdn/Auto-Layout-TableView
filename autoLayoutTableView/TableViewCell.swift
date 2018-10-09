//
//  TableViewCell.swift
//  autoLayoutTableView
//
//  Created by ibrahim doğan on 5.10.2018.
//  Copyright © 2018 ibrahimdn. All rights reserved.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
   

    let label = UILabel()
    let picture = UIImageView()
    let buton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

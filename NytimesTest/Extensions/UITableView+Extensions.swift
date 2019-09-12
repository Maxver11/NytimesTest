//
//  UITableView+Extensions.swift
//  NytimesTest
//
//  Created by DeveloperMBPRO on 9/9/19.
//  Copyright © 2019 Test project. All rights reserved.
//

import UIKit

extension UITableView {
    func dequeueCell<T: CellIdentifying>(withType type: T.Type, for path: IndexPath) -> T {
        let cell = self.dequeueReusableCell(withIdentifier: type.reuseIdentifier, for: path)
        return cell as! T
    }
}

extension UITableViewCell: CellIdentifying {
    
    static var nibName: String {
        let cellPathName = NSStringFromClass(self)
        let cellName = cellPathName.components(separatedBy: ".").last!
        return cellName
    }
    
    static var reuseIdentifier: String {
        return nibName
    }
    
    static var nibForCell: UINib {
        return UINib.init(nibName: reuseIdentifier, bundle: nil)
    }
    
}

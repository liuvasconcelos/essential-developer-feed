//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Livia Vasconcelos on 12/07/21.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}


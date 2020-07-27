//
//  TypeVC.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/27.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

protocol TypeVCDelegate {
    func selectType(_ typeSpecies: Int)
}

let typeAry = ["全部種類", "伏特加", "琴酒", "蘭姆酒", "龍舌蘭", "白蘭地", "威士忌", "其他種類"]

class TypeVC: UIViewController {

    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    var delegate: TypeVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewHeight.constant = CGFloat(typeAry.count * 44)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
}

extension TypeVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return typeAry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TypeCell", for: indexPath) as! TypeCell
        
        cell.title.text = typeAry[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        delegate?.selectType(indexPath.row)
        dismiss(animated: true, completion: nil)
    }
}

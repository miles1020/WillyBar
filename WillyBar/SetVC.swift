//
//  SetVC.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/22.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

class SetVC: BaseViewController {

    let setAry = ["訂閱/解鎖", "回復購買", "隱私權/版權聲明", "版本資訊", "留言，聯絡窮困的我們"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
    }
}

extension SetVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return setAry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SetCell", for: indexPath) as! SetCell
        
        
        cell.setImageView.image = UIImage(named: "bb-\(indexPath.row+1)")
        cell.leftTitle.text = setAry[indexPath.row]
        
        if indexPath.row == 3 {
            cell.rightTitle.text = "v1.0.0"
        } else {
            cell.rightTitle.text = ""
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

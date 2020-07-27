//
//  DiceVC.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/22.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit
import SVGAPlayer

class DiceVC: BaseViewController, SVGAPlayerDelegate {

    @IBOutlet weak var topTitle: UILabel!
    @IBOutlet weak var player: SVGAPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topTitle.text = "每天抽一杯\n骰一下來抽吧！"
        
        player.delegate = self
        player.contentMode = .scaleAspectFit
        player.loops = 1
        player.clearsAfterStop = false
        
        let parser = SVGAParser()
        parser.parse(withNamed: "Dice", in: nil, completionBlock: { (item) in
            
            self.player.videoItem = item
        }) { (error) in
            print("error: \(error.localizedDescription)")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        player.startAnimation()
    }
    
    func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
        
        let detailedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailedVC") as! DetailedVC
        
        navigationController?.pushViewController(detailedVC, animated: true)
    }
}

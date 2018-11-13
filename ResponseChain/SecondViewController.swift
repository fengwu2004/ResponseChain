//
//  SecondViewController.swift
//  ResponseChain
//
//  Created by ky on 2018/11/13.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  @IBOutlet weak var blueView:BlueView!
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    let ges = UITapGestureRecognizer(target: self, action: #selector(doClick))
    
    blueView.addGestureRecognizer(ges)
  }
  
  @objc func doClick() -> Void {
    
    print("doClick")
  }

  required init?(coder aDecoder: NSCoder) {
    
    super.init(coder: aDecoder)
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("viewcontroller touchesBegan")
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("viewcontroller touchesBegan")
  }
}

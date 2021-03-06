//
//  ViewController.swift
//  ResponseChain
//
//  Created by ky on 2018/11/12.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var container:ContainerView!
  
  @IBOutlet weak var btn:MyButton!
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    btn.addTarget(self, action: #selector(btnClick), for: UIControl.Event.touchDown)
  }

  @objc func btnClick() {

    print("ViewController btnClick")
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("touchesEnded", self.isFirstResponder)
    
    super.touchesEnded(touches, with: event)
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    print("View Controller touchesBegan")
    
    super.touchesBegan(touches, with: event)
  }
  
  override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
    
    super.pressesBegan(presses, with: event)
  }
}


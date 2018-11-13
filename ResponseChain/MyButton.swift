//
//  MyButton.swift
//  ResponseChain
//
//  Created by ky on 2018/11/12.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

class MyButton: UIButton {
  
  /*
   // Only override draw() if you perform custom drawing.
   // An empty implementation adversely affects performance during animation.
   override func draw(_ rect: CGRect) {
   // Drawing code
   }
   */
  
  required init?(coder aDecoder: NSCoder) {
    
    print("init")
    
    super.init(coder: aDecoder)
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("Mybutton touchesEnded")
    
    super.touchesEnded(touches, with: event)
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("Mybutton touchesBegan")
    
    super.touchesBegan(touches, with: event)
  }
  
  @objc func btnClick() {
    
    print("MyButton btnClick")
  }
  
  @objc func dotest() {
    
    print("dotest")
  }
  
  override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
    
    super.pressesBegan(presses, with: event)
  }
}

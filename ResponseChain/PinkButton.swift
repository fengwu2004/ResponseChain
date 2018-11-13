//
//  PinkButton.swift
//  ResponseChain
//
//  Created by ky on 2018/11/13.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

class PinkButton: UIButton {
  
  /*
   // Only override draw() if you perform custom drawing.
   // An empty implementation adversely affects performance during animation.
   override func draw(_ rect: CGRect) {
   // Drawing code
   }
   */
  
  required init?(coder aDecoder: NSCoder) {
    
    super.init(coder: aDecoder)
    
    self.isEnabled = false
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    super.touchesBegan(touches, with: event)
  }
  
  override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
    
    super.pressesBegan(presses, with: event)
  }
}

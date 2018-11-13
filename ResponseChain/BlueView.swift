//
//  BlueView.swift
//  ResponseChain
//
//  Created by ky on 2018/11/13.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

class BlueView: UIView {
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("BlueView touchesBegan")
    
    super.touchesBegan(touches, with: event)
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("BlueView touchesEnded")
    
    super.touchesEnded(touches, with: event)
  }
}

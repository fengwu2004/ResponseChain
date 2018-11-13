//
//  ContainerView.swift
//  ResponseChain
//
//  Created by ky on 2018/11/12.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

class ContainerView: UIView {
  
  @objc func btnClick() {
    
    print("ContainerView btnClick")
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    print("ContainerView touchesBegan")
    
    super.touchesBegan(touches, with: event)
  }
  
  override var canBecomeFirstResponder: Bool {
    
    return true
  }
  
  override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
    
    guard self.isUserInteractionEnabled, self.alpha > 0.01, !self.isHidden else {
      
      return nil
    }
    
    var mayberesult:UIView? = nil
    
    if self.point(inside: point, with: event) {
      
      mayberesult = self
    }
    else {
      
      mayberesult = nil
      
      if self.clipsToBounds {
        
        return nil
      }
    }
    
    for view in self.subviews.reversed() {
      
      let p = self.convert(point, to: view)
      
      if let hitTestView = view.hitTest(p, with: event) {
        
        return hitTestView
      }
    }
    
    return mayberesult
  }
}

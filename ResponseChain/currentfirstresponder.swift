//
//  currentfirstresponder.swift
//  ResponseChain
//
//  Created by ky on 2018/11/12.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

let UIResponderSiwzzle = {
  
  UIResponder.swizzle()
}()

extension UIResponder {
  
  private static weak var _currentFirstResponder:UIResponder?
  
  static var currentFirstResponder:UIResponder? {
    
    _currentFirstResponder = nil
    
    UIApplication.shared.sendAction(#selector(findFirstResponder(_:)), to: nil, from: nil, for: nil)
    
    return _currentFirstResponder
  }
  
  @objc func findFirstResponder(_ sender:Any) {
    
    UIResponder._currentFirstResponder = self
  }
  
  class func swizzle() {
    
    let originalMethod = class_getInstanceMethod(UIResponder.self, #selector(becomeFirstResponder))
    
    let swizzledMethod = class_getInstanceMethod(UIResponder.self, #selector(my_becomeFirstResponder))
    
    if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
      
      method_exchangeImplementations(originalMethod, swizzledMethod)
    }
  }
  
  @objc func my_becomeFirstResponder() -> Bool {
    
    return my_becomeFirstResponder()
  }
}

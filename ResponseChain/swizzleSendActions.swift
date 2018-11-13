//
//  swizzleSendActions.swift
//  ResponseChain
//
//  Created by ky on 2018/11/12.
//  Copyright © 2018 yellfun. All rights reserved.
//

import UIKit

let MyGlobal = {
  UIApplication.swizzlea()
}()

extension UIApplication {
  
  class func swizzlea() {
    
    let originalMethod = class_getInstanceMethod(UIApplication.self, #selector(sendAction(_:to:from:for:)))
    
    let swizzledMethod = class_getInstanceMethod(UIApplication.self, #selector(test_sendAction(_:to:from:for:)))
    
    if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {

      method_exchangeImplementations(originalMethod, swizzledMethod)
    }
  }
  
  @objc open func test_sendAction(_ action: Selector, to target: Any?, from sender: Any?, for event: UIEvent?) -> Bool {
    
    let b = test_sendAction(action, to: target, from: sender, for: event)
    
    return b
  }
}

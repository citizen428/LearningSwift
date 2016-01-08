//
//  BoozeBuy.swift
//  BoozeBuy
//
//  Created by Michael K on 1/5/16.
//  Copyright © 2016 Michael Kohl. All rights reserved.
//

import UIKit

class BoozeBuy: NSObject {
  let formatter = NSDateFormatter()
  let calendar = NSCalendar.currentCalendar()
  
  override init() {
    formatter.timeZone = NSTimeZone.init(abbreviation: "ICT")
  }
  
  func getUIElements() -> (UIImage, String, String) {
    let canBuyNowImage: UIImage!
    let message: String
    
    let components = calendar.components([.Hour, .Minute, .Second], fromDate: NSDate())
    
    if canBuyNow(components) {
      canBuyNowImage = UIImage(named: "hands up")
      message = "left to buy booze!"
    } else {
      canBuyNowImage = UIImage(named: "hands down")
      message = "until you can buy booze again!"
    }
      
    return (canBuyNow: canBuyNowImage, timeLeft: timeLeft(components), message: message)
  }
  
  func canBuyNow(comp: NSDateComponents) -> Bool {
    return 11...13 ~= comp.hour || 17...23 ~= comp.hour
  }

  // MARK: Helper methods
  func timeLeft(comp: NSDateComponents) -> String {
    let target = NSDateComponents()
    target.minute = 0
    
    switch comp.hour {
    case 0..<11:
      target.hour = 11
    case 11..<14:
      target.hour = 14
    case 14..<17:
      target.hour = 17
    default:
      target.hour = 24
    }
    let difference = calendar.dateFromComponents(comp)!.timeIntervalSinceDate((calendar.dateFromComponents(target))!)
    return stringFromTimeInterval(difference)
  }
  
  func stringFromTimeInterval(interval: NSTimeInterval) -> String {
    let ti = abs(interval)
    let seconds = ti % 60
    let minutes = (ti / 60) % 60
    let hours = (ti / 3600)
    
    return String(format: "%d:%02d:%02d", Int(hours), Int(minutes), Int(seconds))
  }
  
}

//
//  BoozeBuy.swift
//  BoozeBuy
//
//  Created by Michael K on 1/5/16.
//  Copyright © 2016 Michael Kohl. All rights reserved.
//

import UIKit

class BoozeBuy: NSObject {
  let formatter = DateFormatter()
  let calendar = Calendar.current
  
  override init() {
    formatter.timeZone = TimeZone.init(abbreviation: "ICT")
  }
  
  func getUIElements() -> (UIImage, String, String) {
    let canBuyNowImage: UIImage!
    let message: String
    
    let components = (calendar as NSCalendar).components([.hour, .minute, .second], from: Date())
    
    if canBuyNow(components) {
      canBuyNowImage = UIImage(named: "hands up")
      message = "left to buy booze!"
    } else {
      canBuyNowImage = UIImage(named: "hands down")
      message = "until you can buy booze again!"
    }
      
    return (canBuyNow: canBuyNowImage, timeLeft: timeLeft(components), message: message)
  }
  
  func canBuyNow(_ comp: DateComponents) -> Bool {
    guard let hour = comp.hour else { return false }
    return 11...13 ~= hour || 17...23 ~= hour
  }

  // MARK: Helper methods
  func timeLeft(_ comp: DateComponents) -> String {
    guard let hour = comp.hour else { return "" }
    var target = DateComponents()
    target.minute = 0
    
    switch hour {
    case 0..<11:
      target.hour = 11
    case 11..<14:
      target.hour = 14
    case 14..<17:
      target.hour = 17
    default:
      target.hour = 24
    }
    let difference = calendar.date(from: comp)!.timeIntervalSince((calendar.date(from: target))!)
    return stringFromTimeInterval(difference)
  }
  
  func stringFromTimeInterval(_ interval: TimeInterval) -> String {
    let ti = abs(interval)
    let seconds = ti.truncatingRemainder(dividingBy: 60)
    let minutes = (ti / 60).truncatingRemainder(dividingBy: 60)
    let hours = (ti / 3600)
    
    return String(format: "%d:%02d:%02d", Int(hours), Int(minutes), Int(seconds))
  }
  
}

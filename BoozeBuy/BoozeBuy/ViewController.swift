//
//  ViewController.swift
//  BoozeBuy
//
//  Created by Michael K on 1/5/16.
//  Copyright © 2016 Michael Kohl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var canBuy: UIImageView!
  @IBOutlet weak var time: UILabel!
  @IBOutlet weak var suffix: UILabel!
  
  
  let boozeBuy = BoozeBuy()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    update()
    Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
  }
  
  func update() {
    let (canBuyNow, timeLeft, message) = boozeBuy.getUIElements()
    
    self.canBuy.image = canBuyNow
    self.time.text = timeLeft
    self.suffix.text = message
  }
  
  @IBAction func infoPressed(_ sender: AnyObject) {
    let title = "You can buy alcohol from 11:00-14:00 (11am-2pm) and 17:00-24:00 (5pm-12am), not taking into account Buddhist holidays or election days."
    let alertView = UIAlertController(title: "Alcohol sales in Thailand", message: title, preferredStyle: .alert)
    alertView.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    present(alertView, animated: true, completion: nil)
  }
}


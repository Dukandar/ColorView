
//
//  ColorView.swift
//  FirstCocoaPodaExample
//
//  Created by Sunilkumar Basappa on 07/06/17.
//  Copyright © 2017 iNube. All rights reserved.
//

import UIKit

class ColorView: UIView {

    var colors : [UIColor] = [.red,.orange,.yellow,.blue,.purple]
    var colorCounter : Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        scheduleBackgroundColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func scheduleBackgroundColor()
    {
        let schedul = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true, block: { (timer) in
            
            UIView.animate(withDuration: 2.0, animations: {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                if self.colorCounter > 3
                {
                    self.colorCounter = 0
                }else
                {
                     self.colorCounter += 1
                }
               
            })
        })
        schedul.fire()
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

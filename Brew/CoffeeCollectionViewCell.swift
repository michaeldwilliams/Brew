//
//  CoffeeCollectionViewCell.swift
//  Brew
//
//  Created by Michael Williams on 5/4/17.
//  Copyright © 2017 Michael D. Williams. All rights reserved.
//

import UIKit

class CoffeeCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "coffeeCell"
    
    @IBOutlet weak var coffeeImageView: UIImageView!
    @IBOutlet weak var coffeeImageLabel: UILabel!
    @IBOutlet weak var labelBackgroundView: UIView!
    
    override func awakeFromNib() {
        coffeeImageView.adjustsImageWhenAncestorFocused = true
        coffeeImageView.clipsToBounds = false
        
        coffeeImageLabel.alpha = 0.0
        labelBackgroundView.alpha = 0.0
    }
    
    override func prepareForReuse() {
        coffeeImageLabel.alpha = 0.0
        labelBackgroundView.alpha = 0.0
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
        coordinator.addCoordinatedAnimations({ 
            if self.isFocused {
                self.coffeeImageLabel.alpha = 1.0
                self.labelBackgroundView.alpha = 0.7
            } else {
                self.coffeeImageLabel.alpha = 0.0
                self.labelBackgroundView.alpha = 0.0
            }
        }, completion: nil)
    }
    
}

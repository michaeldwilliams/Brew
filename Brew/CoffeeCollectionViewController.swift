//
//  CoffeeCollectionViewController.swift
//  Brew
//
//  Created by Michael Williams on 5/4/17.
//  Copyright © 2017 Michael D. Williams. All rights reserved.
//

import UIKit


class CoffeeCollectionViewController: UICollectionViewController {
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = collectionView?.indexPathsForSelectedItems?.first {
            let coffeeItem = CoffeeItem.coffeeMethods[indexPath.item]
            if let splitViewController = segue.destination as? SplitViewController {
                splitViewController.coffeeItem = coffeeItem
            }
        }
        
    }
}




extension CoffeeCollectionViewController {
 
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CoffeeItem.coffeeMethods.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CoffeeCollectionViewCell.reuseIdentifier, for: indexPath) as? CoffeeCollectionViewCell else {
            fatalError("Could not cast cell as CoffeeCollectionCell")
        }
        
        let brewMethod = CoffeeItem.coffeeMethods[indexPath.item]
        
        cell.coffeeImageLabel.text = brewMethod.methodName
        cell.coffeeImageView.image = UIImage(named: brewMethod.image)
        return cell
    }

    
}

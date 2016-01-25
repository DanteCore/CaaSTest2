//
//  CashPointDataSource.swift
//  CaaSTest
//
//  Created by Serhii Onopriienko on 1/21/16.
//  Copyright © 2016 Edsson. All rights reserved.
//

import Foundation
import UIKit

struct CashPointHeaderRowSource {
    static func headeRows() -> [String] {
        return [
            "Location code",
            "Service date",
            "Order number",
            "Status",
            "Ordered"
        ]
    }
}

class CashPointDataSource: NSObject, UICollectionViewDataSource {
    
    let data = [CashPoint]()
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 30
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CashPointHeaderRowSource.headeRows().count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cashPoint = CashPoint()
        
        switch indexPath.row {
        case 0: return locationCodeRow(indexPath, collectionView: collectionView, chashPoint: cashPoint)
        case 1: return serviceDateRow(indexPath, collectionView: collectionView, chashPoint: cashPoint)
        case 2: return orderNumberRow(indexPath, collectionView: collectionView, chashPoint: cashPoint)
        case 3: return statusRow(indexPath, collectionView: collectionView, chashPoint: cashPoint)
        case 4: return orderedRow(indexPath, collectionView: collectionView, chashPoint: cashPoint)
        default: return locationCodeRow(indexPath, collectionView: collectionView, chashPoint: cashPoint)
        }
    }
    
    func headerRowCellForIndexPath(indexPath: NSIndexPath, inCollectionView collectionView: UICollectionView) -> UICollectionViewCell {
        let sectionCell : CashPointSectionCell = collectionView.dequeueReusableCellWithReuseIdentifier(CashPointSectionCell.identifier, forIndexPath: indexPath) as! CashPointSectionCell
        sectionCell.sectionName.text = CashPointHeaderRowSource.headeRows()[indexPath.row]
        return sectionCell
    }
    
    func locationCodeRow(indexPath: NSIndexPath, collectionView: UICollectionView, chashPoint: CashPoint) -> UICollectionViewCell {
        if indexPath.section == 0 {
            return headerRowCellForIndexPath(indexPath, inCollectionView: collectionView)
        } else {
            let contentCell : CashPointTextCell = collectionView .dequeueReusableCellWithReuseIdentifier(CashPointTextCell.identifier, forIndexPath: indexPath) as! CashPointTextCell
            contentCell.textLabel.text = "Data"
            return contentCell
        }
    }
    
    func serviceDateRow(indexPath: NSIndexPath, collectionView: UICollectionView, chashPoint: CashPoint) -> UICollectionViewCell {
        if indexPath.section == 0 {
            return headerRowCellForIndexPath(indexPath, inCollectionView: collectionView)
        } else {
            let contentCell : CashPointTextCell = collectionView .dequeueReusableCellWithReuseIdentifier(CashPointTextCell.identifier, forIndexPath: indexPath) as! CashPointTextCell
            contentCell.textLabel.text = "Data"
            return contentCell
        }
    }
    
    func orderNumberRow(indexPath: NSIndexPath, collectionView: UICollectionView, chashPoint: CashPoint) -> UICollectionViewCell {
        if indexPath.section == 0 {
            return headerRowCellForIndexPath(indexPath, inCollectionView: collectionView)
        } else {
            let contentCell : CashPointTextCell = collectionView .dequeueReusableCellWithReuseIdentifier(CashPointTextCell.identifier, forIndexPath: indexPath) as! CashPointTextCell
            contentCell.textLabel.text = "Data"
            return contentCell
        }
    }
    
    func statusRow(indexPath: NSIndexPath, collectionView: UICollectionView, chashPoint: CashPoint) -> UICollectionViewCell {
        if indexPath.section == 0 {
            return headerRowCellForIndexPath(indexPath, inCollectionView: collectionView)
        } else {
            let contentCell : CashPointTextCell = collectionView .dequeueReusableCellWithReuseIdentifier(CashPointTextCell.identifier, forIndexPath: indexPath) as! CashPointTextCell
            contentCell.textLabel.text = "Data"
            return contentCell
        }
    }
    
    func orderedRow(indexPath: NSIndexPath, collectionView: UICollectionView, chashPoint: CashPoint) -> UICollectionViewCell {
        if indexPath.section == 0 {
            return headerRowCellForIndexPath(indexPath, inCollectionView: collectionView)
        } else {
            let contentCell : CashPointTextCell = collectionView .dequeueReusableCellWithReuseIdentifier(CashPointTextCell.identifier, forIndexPath: indexPath) as! CashPointTextCell
            contentCell.textLabel.text = "Data"
            return contentCell
        }
    }
}
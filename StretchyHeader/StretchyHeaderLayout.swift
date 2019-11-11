//
//  StretchyHeaderLayout.swift
//  StretchyHeader
//
//  Created by Rustem Supayev on 11/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {

 
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        
        layoutAttributes?.forEach({ (attributes) in
            
            if attributes.representedElementKind ==
                UICollectionView.elementKindSectionHeader && attributes.indexPath.section == 0 {
                
                guard let collectionView = collectionView else { return }
                
                let contentOffset = collectionView.contentOffset.y
                print(contentOffset)
                
                if contentOffset > 0 {
                    return
                }
                
                let width = collectionView.frame.width
                let height = attributes.frame.height - contentOffset

                attributes.frame = CGRect(x: 0, y: contentOffset, width: width, height: height)
                
                
            }
        })
        return layoutAttributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
    
}

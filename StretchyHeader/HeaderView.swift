//
//  HeaderView.swift
//  StretchyHeader
//
//  Created by Rustem Supayev on 11/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView: UIImageView = {
        
        let iv = UIImageView(image: #imageLiteral(resourceName: "ios-dating-app-template-800x600"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
    
}

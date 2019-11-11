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
        imageView.fillSuperview()
        
        //blur
        setupVisualBlurEffect()
    }
    
    var animator: UIViewPropertyAnimator!
    
    func setupVisualBlurEffect() {
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear,
            animations: { [weak self] in
            
             let blurEffect = UIBlurEffect(style: .regular )
            let visualEffectView = UIVisualEffectView(effect: blurEffect)
            
            self? .addSubview(visualEffectView)
            visualEffectView.fillSuperview()
        })
        
        }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
    
}

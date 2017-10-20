//
//  MFBackgroundView.swift
//  MFProgressHUD
//
//
//  Created by Youngmin Kim on 2017. 10. 19..
//  Copyright © 2017년 CocoaPods. All rights reserved.
//

import UIKit

public class MFBackgroundView: UIView {
    
    // MARK: - Properties
    
    /// The background style. Defaults to MFProgressHUDBackgroundStyle.blur
    public var style: MFProgressHUDBackgroundStyle = .blur {
        didSet {
            if style != oldValue { updateForBackgroundStyle() }
        }
    }
    
    /// The background color or the blur tint color.
    public var color: UIColor = UIColor(white: 0.8, alpha: 0.6) {
        didSet {
            if color != oldValue, !color.isEqual(oldValue) { backgroundColor = color }
        }
    }
    
    var effectView: UIVisualEffectView?
    
    // MARK: - Lifecycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        
        updateForBackgroundStyle()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        clipsToBounds = true
        
        updateForBackgroundStyle()
    }
    
    // MARK: - Layout
    
    public override var intrinsicContentSize: CGSize {
        // Smallest size possible. Content pushes against this.
        return .zero
    }
}

extension MFBackgroundView {
    
    // MARK: - Views
    
    fileprivate func updateForBackgroundStyle() {
        if style == .blur {
            
            let effect = UIBlurEffect(style: .light)
            let effectview = UIVisualEffectView(effect: effect)
            addSubview(effectview)
            effectview.frame = bounds
            effectview.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            backgroundColor = color
            layer.allowsGroupOpacity = false
            effectView = effectview
        } else {
            
            effectView?.removeFromSuperview()
            effectView = nil
            backgroundColor = color
        }
    }
    
}

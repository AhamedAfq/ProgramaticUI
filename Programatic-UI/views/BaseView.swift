//
//  BaseView.swift
//  Programatic-UI
//
//  Created by Ashfak Ahamed Alauddeen on 30/11/25.
//


// File: BaseView.swift
import UIKit


class BaseView: UIView {
    
    /*  This is the only initializer used for programmatic views.
     init?(coder:) is NOT called.
     It just sits there doing nothing. */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
        configureAppearance()
    }
    
    /*  Why?
     You drag a UIView onto storyboard
     Set its class to CustomView
     App loads this view from storyboard
     Because storyboard + xib load objects using archiving/unarchiving, not frames.
     Frames in storyboard come later (AutoLayout).  */
    
    /*  Why required?
     Because UIView adopts NSCoding, and any subclass must provide an implementation for init(coder:) */
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {}
    func setupConstraints() {}
    func configureAppearance() {}
}

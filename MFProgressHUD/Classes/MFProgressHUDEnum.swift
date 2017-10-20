//
//  MFProgressHUDEnum.swift
//  MFProgressHUD
//
//
//  Created by Youngmin Kim on 2017. 10. 19..
//  Copyright © 2017년 CocoaPods. All rights reserved.
//


import Foundation

/// mode
///
/// - indeterminate: UIActivityIndicatorView.
/// - determinate: A round, pie-chart like, progress view.
/// - determinateHorizontalBar: Horizontal progress bar.
/// - annularDeterminate: Ring-shaped progress view.
/// - customView: Shows a custom view.
/// - text: Shows only labels.
public enum MFProgressHUDMode {
    case indeterminate
    case determinate
    case determinateHorizontalBar
    case annularDeterminate
    case customView
    case text
}


/// animation
///
/// - fade: Opacity animation
/// - zoom: Opacity + scale animation (zoom in when appearing zoom out when disappearing)
/// - zoomOut: Opacity + scale animation (zoom out style)
/// - zoomIn: Opacity + scale animation (zoom in style)
public enum MFProgressHUDAnimation {
    case fade
    case zoom
    case zoomOut
    case zoomIn
}


/// background style
///
/// - solidColor: Solid color background
/// - blur: UIVisualEffectView background view
public enum MFProgressHUDBackgroundStyle {
    case solidColor
    case blur
}

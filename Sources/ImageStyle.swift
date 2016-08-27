//
//  ImageStyle.swift
//  Overlay
//
//  Created by Justin Jia on 8/13/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes an image property of a view that conforms to `Custom*Image`.
/// - SeeAlso: `ImageStyleGroup`, `ImageGroup`
public protocol ImageStyle {
    
    /// Returns an image that will be used in normal state.
    /// - Returns: An `UIImage` that will be used in normal state.
    func normal() -> UIImage
    
}

/// A protocol that describes an image property of a view in different states (e.g. disabled) that conforms to `Custom*Image`.
/// - SeeAlso: `ImageStyle`, `ImageGroup`
public protocol ImageStyleGroup: ImageStyle {
    
    /// Returns an image that will be used in disabled state.
    /// - Returns: An `UIImage` that will be used in disabled state, or `nil` if no image is set.
    func disabled() -> UIImage?
    
    /// Returns an image that will be used in selected state.
    /// - Returns: An `UIImage` that will be used in selected state, or `nil` if no image is set.
    func selected() -> UIImage?
    
    /// Returns an image that will be used in highlighted state.
    /// - Returns: An `UIImage` that will be used in highlighted state, or `nil` if no image is set.
    func highlighted() -> UIImage?
    
    /// Returns an image that will be used in focused state.
    /// - Returns: An `UIImage` that will be used in focused state, or `nil` if no image is set.
    func focused() -> UIImage?
    
}

public extension ImageStyleGroup {

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func disabled() -> UIImage? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func selected() -> UIImage? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func highlighted() -> UIImage? {
        return nil
    }

    /// Returns `nil` by default.
    /// - Returns: `nil` by default.
    func focused() -> UIImage? {
        return nil
    }
    
}

extension UIImage: ImageStyle {

    /// Returns an image that will be used in normal state.
    /// - Returns: An `UIImage` that will be used in normal state.
    public func normal() -> UIImage {
        return self
    }
    
}

/// A collection of images that describes an image property of a view in different states (e.g. disabled) that conforms to `Custom*Image`.
/// - SeeAlso: `ImageStyle`, `ImageStyleGroup`
public struct ImageGroup {
    
    /// The image that will be used in normal state.
    fileprivate let normalStorage: ImageStyle
    
    /// The image that will be used in disabled state, or `nil` if no image is set.
    fileprivate let disabledStorage: ImageStyle?
    
    /// The image that will be used in selected state, or `nil` if no image is set.
    fileprivate let selectedStorage: ImageStyle?
    
    /// The image that will be used in highlighted state, or `nil` if no image is set.
    fileprivate let highlightedStorage: ImageStyle?
    
    /// The image that will be used in focused state, or `nil` if no image is set.
    fileprivate let focusedStorage: ImageStyle?
    
    /// Creates an instance with objects that conforms to `ImageStyle`.
    /// - Parameter normal: An `UIImage` that will be used in normal state.
    /// - Parameter disabled: An `UIImage` that will be used in disabled state.
    /// - Parameter selected: An `UIImage` that will be used in selected state.
    /// - Parameter highlighted: An `UIImage` that will be used in highlighted state.
    /// - Parameter focused: An `UIImage` that will be used in focused state.
    public init(normal: ImageStyle, disabled: ImageStyle? = nil, selected: ImageStyle? = nil, highlighted: ImageStyle? = nil, focused: ImageStyle? = nil) {
        normalStorage = normal
        disabledStorage = disabled
        selectedStorage = selected
        highlightedStorage = highlighted
        focusedStorage = focused
    }
    
}

extension ImageGroup: ImageStyleGroup {
    
    /// Returns an image that will be used in normal state.
    /// - Returns: An `UIImage` that will be used in normal state.
    public func normal() -> UIImage {
        return normalStorage.normal()
    }

    /// Returns an image that will be used in disabled state.
    /// - Returns: An `UIImage` that will be used in disabled state, or `nil` if no image is set.
    public func disabled() -> UIImage? {
        return disabledStorage?.normal()
    }

    /// Returns an image that will be used in selected state.
    /// - Returns: An `UIImage` that will be used in selected state, or `nil` if no image is set.
    public func selected() -> UIImage? {
        return selectedStorage?.normal()
    }

    /// Returns an image that will be used in highlighted state.
    /// - Returns: An `UIImage` that will be used in highlighted state, or `nil` if no image is set.
    public func highlighted() -> UIImage? {
        return highlightedStorage?.normal()
    }

    /// Returns an image that will be used in focused state.
    /// - Returns: An `UIImage` that will be used in focused state, or `nil` if no image is set.
    public func focused() -> UIImage? {
        return focusedStorage?.normal()
    }

}

/// A protocol that describes a view that its image can be expressed by `ImageStyle`.
public protocol ImageStyleExpressible { }

extension ImageStyleExpressible {

    /// Returns an image that will be used in current state.
    /// - Parameter style: An `ImageStyle` that describes the image.
    /// - Parameter states: An array of `UIControlState` that should be treated as normal state.
    /// - Returns: An `UIImage` that will be used in current state, or `nil` if no image is set.
    func selectedImage(from style: ImageStyle, usingNormalFor states: [UIControlState] = []) -> UIImage? {
        guard let styleGroup = style as? ImageStyleGroup else {
            return style.normal()
        }

        if let view = self as? ViewHighlightable, view.isHighlighted, !states.contains(.highlighted) {
            return styleGroup.highlighted()
        } else if let view = self as? ViewSelectable, view.isSelected, !states.contains(.selected) {
            return styleGroup.selected()
        } else if let view = self as? ViewDisable, !view.isEnabled, !states.contains(.disabled) {
            return styleGroup.disabled()
        } else if let view = self as? ViewFocusable, view.isFocused, !states.contains(.focused) {
            return styleGroup.focused()
        } else {
            return styleGroup.normal()
        }
    }

    /// Customizes an image through a setter method.
    /// - Parameter style: An `ImageStyle` that describes an image.
    /// - Parameter setter: A setter method that will customize an image in different states.
    /// - Parameter image: An `UIImage` that will be used.
    /// - Parameter state: An `UIControlState` that will use the image.
    func customizeImage(using style: ImageStyle, through setter: (_ image: UIImage?, _ state: UIControlState) -> ()) {
        setter(style.normal(), .normal)
        if let styleGroup = style as? ImageStyleGroup {
            setter(styleGroup.highlighted(), .highlighted)
            setter(styleGroup.disabled(), .disabled)
            setter(styleGroup.selected(), .selected)
            setter(styleGroup.focused(), .focused)
        }
    }
    
}

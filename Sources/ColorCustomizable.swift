//
//  ColorCustomizable.swift
//  Overlay
//
//  Created by Justin Jia on 8/22/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its background color can be customized.
public protocol BackgroundColorCustomizable: ColorStyleExpressible {

    /// Customizes the background color.
    /// - Parameter style: A `ColorStyle` that describes the background color.
    func customizeBackgroundColor(using style: ColorStyle)

}

/// A protocol that describes a view that its badge color can be customized.
public protocol BadgeColorCustomizable: ColorStyleExpressible {

    /// Customizes the badge color.
    /// - Parameter style: A `ColorStyle` that describes the badge color.
    func customizeBadgeColor(using style: ColorStyle)

}

/// A protocol that describes a view that its bar tint color can be customized.
public protocol BarTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the bar tint color.
    /// - Parameter style: A `ColorStyle` that describes the bar tint color.
    func customizeBarTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its border color can be customized.
public protocol BorderColorCustomizable: ColorStyleExpressible {

    /// Customizes the border color.
    /// - Parameter style: A `ColorStyle` that describes the border color.
    func customizeBorderColor(using style: ColorStyle)

}

/// A protocol that describes a view that its color can be customized.
public protocol ColorCustomizable: ColorStyleExpressible {

    /// Customizes the color.
    /// - Parameter style: A `ColorStyle` that describes the color.
    func customizeColor(using style: ColorStyle)

}

/// A protocol that describes a view that its maximum track tint color can be customized.
public protocol MaximumTrackTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the maximum track tint color.
    /// - Parameter style: A `ColorStyle` that describes the maximum track tint color.
    func customizeMaximumTrackTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its minimum track tint color can be customized.
public protocol MinimumTrackTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the minimum track tint color.
    /// - Parameter style: A `ColorStyle` that describes the minimum track tint color.
    func customizeMinimumTrackTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its on tint color can be customized.
public protocol OnTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the on tint color.
    /// - Parameter style: A `ColorStyle` that describes the on tint color.
    func customizeOnTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its progress tint color can be customized.
public protocol ProgressTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the progress tint color.
    /// - Parameter style: A `ColorStyle` that describes the progress tint color.
    func customizeProgressTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its section index background color can be customized.
public protocol SectionIndexBackgroundColorCustomizable: ColorStyleExpressible {

    /// Customizes the section index background color.
    /// - Parameter style: A `ColorStyle` that describes the section index background color.
    func customizeSectionIndexBackgroundColor(using style: ColorStyle)

}

/// A protocol that describes a view that its section index color can be customized.
public protocol SectionIndexColorCustomizable: ColorStyleExpressible {

    /// Customizes the section index color.
    /// - Parameter style: A `ColorStyle` that describes the section index color.
    func customizeSectionIndexColor(using style: ColorStyle)

}

/// A protocol that describes a view that its section index tracking background color can be customized.
public protocol SectionIndexTrackingBackgroundColorCustomizable: ColorStyleExpressible {

    /// Customizes the section index tracking background color.
    /// - Parameter style: A `ColorStyle` that describes the section index tracking background color.
    func customizeSectionIndexTrackingBackgroundColor(using style: ColorStyle)

}

/// A protocol that describes a view that its separator color can be customized.
public protocol SeparatorColorCustomizable: ColorStyleExpressible {

    /// Customizes the separator color.
    /// - Parameter style: A `ColorStyle` that describes the separator color.
    func customizeSeparatorColor(using style: ColorStyle)

}

/// A protocol that describes a view that its shadow color can be customized.
public protocol ShadowColorCustomizable: ColorStyleExpressible {

    /// Customizes the shadow color.
    /// - Parameter style: A `ColorStyle` that describes the shadow color.
    func customizeShadowColor(using style: ColorStyle)

}

/// A protocol that describes a view that its text color can be customized.
public protocol TextColorCustomizable: ColorStyleExpressible {

    /// Customizes the text color.
    /// - Parameter style: A `ColorStyle` that describes the text color.
    func customizeTextColor(using style: ColorStyle)

}

/// A protocol that describes a view that its thumb tint color can be customized.
public protocol ThumbTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the thumb tint color.
    /// - Parameter style: A `ColorStyle` that describes the thumb tint color.
    func customizeThumbTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its tint color can be customized.
public protocol TintColorCustomizable: ColorStyleExpressible {

    /// Customizes the tint color.
    /// - Parameter style: A `ColorStyle` that describes the tint color.
    func customizeTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its title color can be customized.
public protocol TitleColorCustomizable: ColorStyleExpressible {

    /// Customizes the title color.
    /// - Parameter style: A `ColorStyle` that describes the title color.
    func customizeTitleColor(using style: ColorStyle)

}

/// A protocol that describes a view that its title shadow color can be customized.
public protocol TitleShadowColorCustomizable: ColorStyleExpressible {

    /// Customizes the title shadow color.
    /// - Parameter style: A `ColorStyle` that describes the title shadow color.
    func customizeTitleShadowColor(using style: ColorStyle)

}

/// A protocol that describes a view that its track tint color can be customized.
public protocol TrackTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the track tint color.
    /// - Parameter style: A `ColorStyle` that describes the track tint color.
    func customizeTrackTintColor(using style: ColorStyle)

}

/// A protocol that describes a view that its unselected item tint color can be customized.
public protocol UnselectedItemTintColorCustomizable: ColorStyleExpressible {

    /// Customizes the unselected item tint color.
    /// - Parameter style: A `ColorStyle` that describes the unselected item tint color.
    func customizeUnselectedItemTintColor(using style: ColorStyle)

}

extension UIBarButtonItem: TintColorCustomizable {

    public func customizeTintColor(using style: ColorStyle) {
        tintColor = selectedColor(from: style)
    }

}

extension UITabBarItem: BadgeColorCustomizable {

    public func customizeBadgeColor(using style: ColorStyle) {
        if #available(iOS 10.0, *) {
            badgeColor = selectedColor(from: style)
        }
    }

}

extension UIView: TintColorCustomizable, BackgroundColorCustomizable, BorderColorCustomizable {

    public func customizeTintColor(using style: ColorStyle) {
        tintColor = selectedColor(from: style)
    }

    public func customizeBackgroundColor(using style: ColorStyle) {
        backgroundColor = selectedColor(from: style)
    }

    public func customizeBorderColor(using style: ColorStyle) {
        layer.borderColor = selectedColor(from: style)?.cgColor
    }

}

extension UIActivityIndicatorView: ColorCustomizable {

    public func customizeColor(using style: ColorStyle) {
        color = selectedColor(from: style)
    }

}

extension UIButton: TitleColorCustomizable, TitleShadowColorCustomizable {

    public func customizeTitleColor(using style: ColorStyle) {
        customizeColor(using: style, through: setTitleColor)
    }

    public func customizeTitleShadowColor(using style: ColorStyle) {
        customizeColor(using: style, through: setTitleShadowColor)
    }

}

extension UISlider: MinimumTrackTintColorCustomizable, MaximumTrackTintColorCustomizable, ThumbTintColorCustomizable {

    public func customizeMinimumTrackTintColor(using style: ColorStyle) {
        minimumTrackTintColor = selectedColor(from: style)
    }

    public func customizeMaximumTrackTintColor(using style: ColorStyle) {
        maximumTrackTintColor = selectedColor(from: style)
    }

    public func customizeThumbTintColor(using style: ColorStyle) {
        thumbTintColor = selectedColor(from: style)
    }

}

extension UISwitch: OnTintColorCustomizable, ThumbTintColorCustomizable {

    public func customizeOnTintColor(using style: ColorStyle) {
        onTintColor = selectedColor(from: style)
    }

    public func customizeThumbTintColor(using style: ColorStyle) {
        thumbTintColor = selectedColor(from: style)
    }

}

extension UITextField: TextColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selectedColor(from: style)
    }

}

extension UILabel: TextColorCustomizable, ShadowColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selectedColor(from: style)
        if let styleGroup = style as? ColorStyleGroup {
            highlightedTextColor = styleGroup.highlighted()
        }
    }

    public func customizeShadowColor(using style: ColorStyle) {
        shadowColor = selectedColor(from: style)
    }

}

extension UINavigationBar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

}

extension UIProgressView: ProgressTintColorCustomizable, TrackTintColorCustomizable {

    public func customizeProgressTintColor(using style: ColorStyle) {
        progressTintColor = selectedColor(from: style)
    }

    public func customizeTrackTintColor(using style: ColorStyle) {
        trackTintColor = selectedColor(from: style)
    }

}

extension UITableView: SeparatorColorCustomizable, SectionIndexColorCustomizable, SectionIndexBackgroundColorCustomizable, SectionIndexTrackingBackgroundColorCustomizable {

    public func customizeSeparatorColor(using style: ColorStyle) {
        separatorColor = selectedColor(from: style)
    }

    public func customizeSectionIndexColor(using style: ColorStyle) {
        sectionIndexColor = selectedColor(from: style)
    }

    public func customizeSectionIndexBackgroundColor(using style: ColorStyle) {
        sectionIndexBackgroundColor = selectedColor(from: style)
    }

    public func customizeSectionIndexTrackingBackgroundColor(using style: ColorStyle) {
        sectionIndexTrackingBackgroundColor = selectedColor(from: style)
    }

}

extension UITextView: TextColorCustomizable {

    public func customizeTextColor(using style: ColorStyle) {
        textColor = selectedColor(from: style)
    }

}

extension UISearchBar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

}

extension UITabBar: BarTintColorCustomizable, UnselectedItemTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

    public func customizeUnselectedItemTintColor(using style: ColorStyle) {
        if #available(iOS 10.0, *) {
            unselectedItemTintColor = selectedColor(from: style)
        }
    }

}

extension UIToolbar: BarTintColorCustomizable {

    public func customizeBarTintColor(using style: ColorStyle) {
        barTintColor = selectedColor(from: style)
    }

}

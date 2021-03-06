//
//  CustomColor.swift
//  Overlay
//
//  Created by Justin Jia on 6/18/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import UIKit

/// A protocol that describes a view that its background color will be customized.
public protocol CustomBackgroundColor: BackgroundColorCustomizable {

    /// The `ColorStyle` that describes the background color.
    var backgroundColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its badge color will be customized.
public protocol CustomBadgeColor: BadgeColorCustomizable {

    /// The `ColorStyle` that describes the badge color.
    var badgeColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its bar tint color will be customized.
public protocol CustomBarTintColor: BarTintColorCustomizable {

    /// The `ColorStyle` that describes the bar tint color.
    var barTintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its border color will be customized.
public protocol CustomBorderColor: BorderColorCustomizable {

    /// The `ColorStyle` that describes the border color.
    var borderColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its color will be customized.
public protocol CustomColor: ColorCustomizable {

    /// The `ColorStyle` that describes the color.
    var colorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its maximum track tint color will be customized.
public protocol CustomMaximumTrackTintColor: MaximumTrackTintColorCustomizable {

    /// The `ColorStyle` that describes the maximum track tint color.
    var maximumTrackTintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its minimum track tint color will be customized.
public protocol CustomMinimumTrackTintColor: MinimumTrackTintColorCustomizable {

    /// The `ColorStyle` that describes the minimum track tint color.
    var minimumTrackTintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its on tint color will be customized.
public protocol CustomOnTintColor: OnTintColorCustomizable {

    /// The `ColorStyle` that describes the on tint color.
    var onTintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its progress tint color will be customized.
public protocol CustomProgressTintColor: ProgressTintColorCustomizable {

    /// The `ColorStyle` that describes the progress tint color.
    var progressTintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its section index background color will be customized.
public protocol CustomSectionIndexBackgroundColor: SectionIndexBackgroundColorCustomizable {

    /// The `ColorStyle` that describes the section index background color.
    var sectionIndexBackgroundColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its section index color will be customized.
public protocol CustomSectionIndexColor: SectionIndexColorCustomizable {

    /// The `ColorStyle` that describes the section index color.
    var sectionIndexColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its section index tracking background color will be customized.
public protocol CustomSectionIndexTrackingBackgroundColor: SectionIndexTrackingBackgroundColorCustomizable {

    /// The `ColorStyle` that describes the section index tracking background color.
    var sectionIndexTrackingBackgroundColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its separator color will be customized.
public protocol CustomSeparatorColor: SeparatorColorCustomizable {

    /// The `ColorStyle` that describes the separator color.
    var separatorColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its shadow color will be customized.
public protocol CustomShadowColor: ShadowColorCustomizable {

    /// The `ColorStyle` that describes the shadow color.
    var shadowColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its text color will be customized.
public protocol CustomTextColor: TextColorCustomizable {

    /// The `ColorStyle` that describes the text color.
    var textColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its thumb tint color will be customized.
public protocol CustomThumbTintColor: ThumbTintColorCustomizable {

    /// The `ColorStyle` that describes the thumb tint color.
    var thumbTintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its tint color will be customized.
public protocol CustomTintColor: TintColorCustomizable {

    /// The `ColorStyle` that describes the tint color.
    var tintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its title color will be customized.
public protocol CustomTitleColor: TitleColorCustomizable {

    /// The `ColorStyle` that describes the title color.
    var titleColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its title shadow color will be customized.
public protocol CustomTitleShadowColor: TitleShadowColorCustomizable {

    /// The `ColorStyle` that describes the title shadow color.
    var titleShadowColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its track tint color will be customized.
public protocol CustomTrackTintColor: TrackTintColorCustomizable {

    /// The `ColorStyle` that describes the track tint color.
    var trackTintColorStyle: ColorStyle { get }

}

/// A protocol that describes a view that its unselected item tint color will be customized.
public protocol CustomUnselectedItemTintColor: UnselectedItemTintColorCustomizable {

    /// The `ColorStyle` that describes the unselected item tint color.
    var unselectedItemTintColorStyle: ColorStyle { get }

}

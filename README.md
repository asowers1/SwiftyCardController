# SwiftyCardController

A maintained fork of [`Cards`](https://github.com/yourkarma/Cards)

SwiftyCardController is container view controller controlling a stack of card views.

![example gif](https://raw.githubusercontent.com/asowers1/SwiftyCardController/master/Example/example.gif)

# Cocoapods

Add the following to your Podfile:

    pod "SwiftyCardController",    git: "https://github.com/asowers1/SwiftCardController"
    
# Carthage

Add the following to your Cartfile:

    github "asowers1/SwiftyCardController" "master"
    github "facebook/pop" "master"

# Documentation

The primary class is the [`CardStackController`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardStackController.swift). It supports pushing and popping
any `UIViewController` subclass using respectively [`pushViewController:animated:completion:`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardStackController.swift) and
[`popViewControllerAnimated:completion:`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardStackController.swift#L151). The first view controller pushed
automatically becomes the [`rootViewController`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardStackController.swift#L151) and fills the
`CardStackController`'s view.

Subsequent view controllers are pushed on top, the position of each card is
determined by the internal [`CardAppearanceCalculator`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardAppearanceCalculator.swift) struct.

Like `UITabBarController` and `UINavigationController` a convenience [`cardStackController`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardStackController.swift#L49) property is provided as an extension on `UIViewController`.

If side effects are necesarry before, during or after a transtion the
[`CardStackTransitionCoordinator`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/TransitionCoordinator.swift) can be used to get notified of these events. Additionally, a delegate is provided on CardStackController that notifies when cards will appear/disappear and did appear/disappear.

The `CardViewController` uses an internal [`Card`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardStackController.swift#L26) struct to keep track of which
view controllers are being presented as cards and the associated view hierarchy and it's constraint. The card uses three custom `UIKit` subclasses to manage the appearance of the cards:

- [`CardMaskShapeLayer`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardMaskShapeLayer.swift) a `CAShapeLayer` subclass that supports animating the `path` property. This is required to properly animated the mask when a trait change occurs.
- [`CardMaskView`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardMaskView.swift) a custom `UIView` subclass. Uses the `CardMaskShapeLayer` to create top rounded corners.
- [`CardScrollView`](https://github.com/asowers1/SwiftyCardController/blob/master/SwiftyCardController/CardScrollView.swift) a custom `UIScrollView` subclass that prevents tracking when interacting with a button.

# Example

An [example application](https://github.com/asowers1/SwiftyCardController/tree/master/Example/Example) is included. It shows some of the basic usages of the `CardStackController`.


<p align="center">
   <img width="500" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/header_PaintCodeKit.png" alt="PaintCodeKit  Logo">
</p>

<p align="center">
   <a href="https://cocoapods.org/pods/PaintCodeKit">
      <img src="https://img.shields.io/cocoapods/v/PaintCodeKit.svg?style=flat&colorB=2365c4" alt="Version">
   </a>
   <!--
   <a href="https://github.com/Carthage/Carthage">
      <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" alt="Carthage Compatible">
   </a>
   -->
   <a href="https://cocoapods.org/pods/PaintCodeKit">
      <img src="https://img.shields.io/cocoapods/l/PaintCodeKit.svg?style=flat)" alt="License">
   </a>
   <a href="https://developer.apple.com/swift/">
      <img src="https://img.shields.io/badge/Swift-5.0-blue.svg?style=flat&colorB=2365c4" alt="Swift 5.0">
   </a>
   <a href="https://cocoapods.org/pods/PaintCodeKit">
      <img src="https://img.shields.io/cocoapods/p/PaintCodeKit.svg?style=flat&colorB=2365c4" alt="Platform">
   </a>
   <!--
   <a href="https://alberdev.github.io/PaintCodeKit">
      <img src="https://github.com/alberdev/PaintCodeKit/blob/gh-pages/badge.svg" alt="Documentation">
   </a>
   -->
   <a href="https://twitter.com/alberdev/">
      <img src="https://img.shields.io/badge/Twitter-@alberdev-blue.svg?style=flat&colorB=2365c4" alt="Twitter">
   </a>
   
</p>

<br/>

<p align="center">
   <b>PaintCodeKit</b> manage your converted images in <a href="https://www.paintcodeapp.com" target="_blank">PaintCode</a>. You will be able to use your images directly in the views using extensions with correct sizes. Use it to maintain your code clean!
</p>


# PaintCodeKit

- [x] Import your code from PaintCodeKit
- [x] Customizable images
- [x] Clean code!
- [x] Easy usage
- [x] Supports iOS, developed in Swift 5

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
    - [Fill your UIImageView](#fillyouruiimageview)
    - [Generate a UIImage](#generateauiimage)
    - [Defaults](#defaults)
- [Extra](#extra)
- [Author](#author)
- [Contributing](#contributing)
- [License](#license)


## Installation

PaintCodeKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile and run `pod install`:

```ruby
pod 'PaintCodeKit'
```

Then you can import it when you need

```swift
import PaintCodeKit
```

## Usage

In the example you can see how to include you own images in `UIImageViews` and how to create an `UIImage` with `PaintCodeManager`. Once you've installed the pod, follow next steps. It's really simple:

### Fill your UIImageView

Use `PaintCodeImage` enum to fill with images preloaded in this pod.

```swift
// This will get imageView frame to get default image size
imageView.draw(PaintCodeImage.user)

// Extended mode
imageView.draw(PaintCodeImage.user, size: CGSize(width: 10, height: 10), color: .white, cached: true)
```

In other case, make your own enum type with  `PaintCodeDraw` protocol implementing `draw` method. Follow next example:

```swift
enum Icon: PaintCodeDraw {

    case shareApp
    case bell

    func draw(size: CGSize, color: UIColor) {
        switch self {
        case .shareApp: PaintCodeImages.drawShareApp(frame: CGRect(origin: .zero, size: size), resizing: .aspectFit)
        case .bell: PaintCodeImages.drawBell(frame: CGRect(origin: .zero, size: size), resizing: .aspectFit)
        }
    }
}
```

As you can see above, `draw` method, will draw your custom image from PaintCode code. So you must extend `PaintCodeImages` and paste [PaintCode](https://www.paintcodeapp.com) code generated draw methods:

```swift
extension PaintCodeImages {

    class func drawShareApp(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 400, height: 400), resizing: ResizingBehavior = .aspectFit) {

        /// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        /// Resize to Target Frame
        context.saveGState()
        let resizedFrame = resizing.apply(rect: CGRect(x: 0, y: 0, width: 24, height: 24), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 24, y: resizedFrame.height / 24)

        /// Combined Shape
        let combinedShape = UIBezierPath()
        combinedShape.move(to: CGPoint(x: 10, y: 3.41))
        combinedShape.addLine(to: CGPoint(x: 10, y: 14))
        combinedShape.addCurve(to: CGPoint(x: 9, y: 15), controlPoint1: CGPoint(x: 10, y: 14.55), controlPoint2: CGPoint(x: 9.55, y: 15))
        combinedShape.addCurve(to: CGPoint(x: 8, y: 14), controlPoint1: CGPoint(x: 8.45, y: 15), controlPoint2: CGPoint(x: 8, y: 14.55))
        combinedShape.addLine(to: CGPoint(x: 8, y: 3.41))
        [...]

        context.restoreGState()
    }
}
```


### Generate a UIImage

Simple ;)

```swift
let image = PaintCodeManager.image(PaintCodeImage.user)
```


### Defaults

You can change some default values in  `PaintCodeManager`:

```swift
/// Image size
PaintCodeManager.shared.defaultSize = CGSize(width: 30, height: 30)

/// Default image color
PaintCodeManager.shared.defaultColor = UIColor.black

/// Cache generated images
PaintCodeManager.shared.defaultCached = true
```

## Extra

Also you can make use of anyone of the included images in `PaintCodeKit`.

```swift
/// Example
PaintCodeImage.user
```

| PaintCodeImage | Preview 
| ------- | :-------:
| `.user`  | <img src="Images/Icons/user.png" width="30" height="30">

## Author

Alberto Aznar, info@alberdev.com

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

PaintCodeKit is available under the MIT license. See the LICENSE file for more info.

## Libraries by @alberdev

<a href="https://github.com/alberdev/AnimatedField"><img align="left" width="100" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/Pods/AnimatedField.png" alt="AnimatedField  Logo" vspace="10"></a>
<a href="https://github.com/alberdev/ContentLoader"><img align="left" width="100" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/Pods/ContentLoader.png" alt="ContentLoader  Logo" vspace="10"></a>
<a href="https://github.com/alberdev/CiaoTransitions"><img align="left" width="100" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/Pods/CiaoTransitions.png" alt="CiaoTransitions  Logo" vspace="10"></a>
<a href="https://github.com/alberdev/DateScrollPicker"><img align="left" width="100" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/Pods/DateScrollPicker.png" alt="DateScrollPicker  Logo" vspace="10"></a>
<a href="https://github.com/alberdev/EmptyStateKit"><img align="left" width="100" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/Pods/EmptyStateKit.png" alt="EmptyStateKit  Logo" vspace="10"></a>
<a href="https://github.com/alberdev/GridTimerView"><img align="left" width="100" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/Pods/GridTimerView.png" alt="GridTimerView  Logo" vspace="10"></a>
<a href="https://github.com/alberdev/PaintCodeKit"><img align="left" width="100" src="https://raw.githubusercontent.com/alberdev/PaintCodeKit/master/Images/Pods/PaintCodeKit.png" alt="PaintCodeKit  Logo" vspace="10"></a>

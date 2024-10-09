# ScreenCorners

Check the corner radius of an iPhone / iPad display.

### Implementation

Adds a `displayCornerRadius` property to `UIScreen`, which reads the private `_displayCornerRadius`. The selector somewhat obscured, which usually means it will get past app review. However, use at your own risk!

#### Why didn't you hardcode the values instead?

I didn't want to use model identifiers (i.e., `iPhone10,2`) and miss an international variant, or have to update it when new devices launch. 

It's also tricky to use screen resolutions, as multiple devices share the same resolution and scale with different corner radii. Display Zoom messes with this too, and ultimately it just seems like a bad idea to assume anything about the device based on the display resolution.

### How to use

iOS device displays use a continious corner curve, which means the corners are not true circles. In iOS 13+ you can use `CALayer.cornerCurve` to specify a continuous corner curve. You might create a view subclass like this:

```swift
class DisplayCornerMatchingView: UIView {
    override func layoutSubviews()
        super.layoutSubviews()
        layer.cornerCurve = .continuous
        layer.cornerRadius = window?.screen.displayCornerRadius ?? 0
    }
}
```

Or perhaps you want to animate from a different corner radius to the screen one. Either way, be sure to set `layer.cornerCurve = .continuous` on the view. 

### Values reported

The following values were reported for various devices with rounded corners:

| Device | Value (pts) |
|--|--|
| iPhone X, Xs, Xs Max, 11 Pro, 11 Pro Max | 39.0 |
| iPhone Xr, 11 | 41.5 |
| iPhone 12 mini, 13 mini | 44.0 |
| iPhone 12, 12 Pro, 13 Pro, 14, 16 Pro | 47.33 |
| iPhone 12 Pro Max, 13 Pro Max, 14 Plus, 16 Pro Max | 53.33 |
| iPhone 14 Pro, 14 Pro Max, 15, 15 Plus, 15 Pro, 15 Pro Max, 16, 16 Plus | 55.0 |
| iPad Air / iPad Pro 11-inch / 12.9-inch | 18.0 |

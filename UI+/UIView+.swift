//
//  UIView+.swift
//  Elegant
//
//  Created by Steve on 2017/5/22.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension UIView {

    ///  When positive, the background of the layer will be drawn with rounded corners. Also effects the mask generated by the`masksToBounds' property. Defaults to true. Animatable.
    public func cornerRadius(_ radius: CGFloat) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }

    /// To add the border for `self`
    /// - Parameters:
    ///   - width: The layer's borderWidth
    ///   - color: The layer's borderColor
    public func addBorder(
        _ width: CGFloat,
        color: UIColor) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
    }
}

extension UIView {

    /// Add tapGesture/action for particular event.
    ///
    /// - Parameters:
    ///   - tapNumber: Default is 1. The number of taps required to match
    ///   - target: `self`
    ///   - action: a `Selector`
    public func addTapGesture(_ tapNumber: Int = 1, target: Any = self, action: Selector) {
        let tap = UITapGestureRecognizer(target: target, action: action)
        tap.numberOfTapsRequired = tapNumber
        addGestureRecognizer(tap)
        isUserInteractionEnabled = true
    }

    /// Returns an image of the current view
    ///
    /// - Parameter scale: scale
    /// - Returns: A new image
    public func getSnapshot(scale: CGFloat = 0) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, scale)
        drawHierarchy(in: bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }

    /// Remove all the subviews from `self`
    public func removeSubviews() {
        subviews.forEach({ $0.removeFromSuperview() })
    }

    /// Remove all gesture recognizers from view.
    public func removeGestureRecognizers() {
        gestureRecognizers?.forEach(removeGestureRecognizer)
    }
}

// MARK: - Border
extension UIView {

    /// Add a border for `self`
    func addBorder(
        _ strokeColor: UIColor = .red,
        fillColor: UIColor = .clear,
        width: CGFloat = 1,
        cornerRadius: CGFloat = 5
    ) {
        addDashedBorder(strokeColor,
                        fillColor: fillColor,
                        width: width,
                        dashPattern: nil,
                        cornerRadius: cornerRadius)
    }

    /// Add dashedBorder for `self`
    func addDashedBorder(
        _ strokeColor: UIColor = .red,
        fillColor: UIColor = .clear,
        width: CGFloat = 1,
        dashPattern: [NSNumber]? = [6, 3],
        cornerRadius: CGFloat = 5
    ) {
        let shapeLayer: CAShapeLayer = CAShapeLayer()
        shapeLayer.bounds = bounds
        shapeLayer.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        shapeLayer.fillColor = fillColor.cgColor
        shapeLayer.strokeColor = strokeColor.cgColor
        shapeLayer.lineWidth = width
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineDashPattern = dashPattern
        shapeLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        layer.addSublayer(shapeLayer)
    }

    /// Add a line for `self`
    func addLine(
        _ color: UIColor = .red,
        width: CGFloat = 1,
        start: CGPoint,
        end: CGPoint
    ) {
        addDashLine(color,
                    width: width,
                    start: start,
                    end: end,
                    dashPattern: nil)
    }

    /// Add a dashLine for `self`
    func addDashLine(
        _ color: UIColor = .red,
        width: CGFloat = 1,
        start: CGPoint,
        end: CGPoint,
        dashPattern: [NSNumber]? = [6, 3]
    ) {
        let shapeLayer: CAShapeLayer = CAShapeLayer()
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color.cgColor
        shapeLayer.lineWidth = width
        shapeLayer.lineJoin = kCALineJoinMiter
        shapeLayer.lineDashPattern = dashPattern
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        shapeLayer.path = path.cgPath
        layer.addSublayer(shapeLayer)
    }
}

// MARK: - Syntactic sugar for the frame
extension UIView {

    var width: CGFloat {
        get { return frame.size.width }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }

    var height: CGFloat {
        get { return frame.size.height }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }

    var size: CGSize {
        get { return self.frame.size }
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }

    var origin: CGPoint {
        get { return self.frame.origin }
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }

    var x: CGFloat {
        get { return self.frame.minX }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }

    var y: CGFloat {
        get { return self.frame.minY }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }

    var centerX: CGFloat {
        get { return self.center.x }
        set {
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }

    var centerY: CGFloat {
        get { return self.center.y }
        set {
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
    }

    var top: CGFloat {
        get { return self.y }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }

    var bottom: CGFloat {
        get { return self.frame.maxY }
        set {
            var frame = self.frame
            frame.origin.y = newValue - self.height
            self.frame = frame
        }
    }

    var right: CGFloat {
        get { return self.frame.maxX }
        set {
            var frame = self.frame
            frame.origin.x = newValue - self.frame.size.width
            self.frame = frame
        }
    }

    var left: CGFloat {
        get { return self.x }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
}

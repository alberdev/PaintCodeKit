//
//  Bell.swift
//  PaintCodeKit_Example
//
//  Created by Alberto Aznar de los Ríos on 21/05/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import PaintCodeKit

extension PaintCodeImages {
    
    class func drawBell(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 26, height: 26), resizing: ResizingBehavior = .aspectFit) {
        
        /// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        /// Resize to Target Frame
        context.saveGState()
        let resizedFrame = resizing.apply(rect: CGRect(x: 0, y: 0, width: 24, height: 24), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 24, y: resizedFrame.height / 24)
        
        /// Shape
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 17, y: 13))
        shape.addLine(to: CGPoint(x: 17, y: 8))
        shape.addCurve(to: CGPoint(x: 11, y: 2), controlPoint1: CGPoint(x: 17, y: 4.69), controlPoint2: CGPoint(x: 14.31, y: 2))
        shape.addCurve(to: CGPoint(x: 5, y: 8), controlPoint1: CGPoint(x: 7.69, y: 2), controlPoint2: CGPoint(x: 5, y: 4.69))
        shape.addLine(to: CGPoint(x: 5, y: 13))
        shape.addCurve(to: CGPoint(x: 4.46, y: 15), controlPoint1: CGPoint(x: 5, y: 13.73), controlPoint2: CGPoint(x: 4.81, y: 14.41))
        shape.addLine(to: CGPoint(x: 17.54, y: 15))
        shape.addCurve(to: CGPoint(x: 17, y: 13), controlPoint1: CGPoint(x: 17.19, y: 14.41), controlPoint2: CGPoint(x: 17, y: 13.73))
        shape.close()
        shape.move(to: CGPoint(x: 21, y: 17))
        shape.addLine(to: CGPoint(x: 1, y: 17))
        shape.addCurve(to: CGPoint(x: 1, y: 15), controlPoint1: CGPoint(x: -0.33, y: 17), controlPoint2: CGPoint(x: -0.33, y: 15))
        shape.addCurve(to: CGPoint(x: 3, y: 13), controlPoint1: CGPoint(x: 2.1, y: 15), controlPoint2: CGPoint(x: 3, y: 14.1))
        shape.addLine(to: CGPoint(x: 3, y: 8))
        shape.addCurve(to: CGPoint(x: 11, y: 0), controlPoint1: CGPoint(x: 3, y: 3.58), controlPoint2: CGPoint(x: 6.58, y: 0))
        shape.addCurve(to: CGPoint(x: 19, y: 8), controlPoint1: CGPoint(x: 15.42, y: 0), controlPoint2: CGPoint(x: 19, y: 3.58))
        shape.addLine(to: CGPoint(x: 19, y: 13))
        shape.addCurve(to: CGPoint(x: 21, y: 15), controlPoint1: CGPoint(x: 19, y: 14.1), controlPoint2: CGPoint(x: 19.9, y: 15))
        shape.addCurve(to: CGPoint(x: 21, y: 17), controlPoint1: CGPoint(x: 22.33, y: 15), controlPoint2: CGPoint(x: 22.33, y: 17))
        shape.close()
        shape.move(to: CGPoint(x: 13.59, y: 20.5))
        shape.addCurve(to: CGPoint(x: 11, y: 22), controlPoint1: CGPoint(x: 13.06, y: 21.43), controlPoint2: CGPoint(x: 12.07, y: 22))
        shape.addCurve(to: CGPoint(x: 8.4, y: 20.5), controlPoint1: CGPoint(x: 9.93, y: 22), controlPoint2: CGPoint(x: 8.94, y: 21.43))
        shape.addCurve(to: CGPoint(x: 9.27, y: 19), controlPoint1: CGPoint(x: 8.02, y: 19.84), controlPoint2: CGPoint(x: 8.5, y: 19))
        shape.addLine(to: CGPoint(x: 12.73, y: 19))
        shape.addCurve(to: CGPoint(x: 13.59, y: 20.5), controlPoint1: CGPoint(x: 13.5, y: 19), controlPoint2: CGPoint(x: 13.98, y: 19.84))
        shape.close()
        context.saveGState()
        context.translateBy(x: 1, y: 1)
        UIColor.black.setFill()
        shape.fill()
        context.restoreGState()
        
        /// Shape (Outline Mask)
        context.saveGState()
        shape.apply(CGAffineTransform(translationX: 1, y: 1))
        shape.addClip()
        
        /// COLOR/ black
        // Warning: New symbols are not supported.
        
        context.restoreGState()
        // End Shape (Outline Mask)
        
        context.restoreGState()
    }
}

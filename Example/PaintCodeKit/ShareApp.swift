//
//  ShareApp.swift
//  PaintCodeKit_Example
//
//  Created by Alberto Aznar de los Ríos on 04/05/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import PaintCodeKit

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
        combinedShape.addLine(to: CGPoint(x: 5.71, y: 5.71))
        combinedShape.addCurve(to: CGPoint(x: 4.29, y: 5.71), controlPoint1: CGPoint(x: 5.32, y: 6.1), controlPoint2: CGPoint(x: 4.68, y: 6.1))
        combinedShape.addCurve(to: CGPoint(x: 4.29, y: 4.29), controlPoint1: CGPoint(x: 3.9, y: 5.32), controlPoint2: CGPoint(x: 3.9, y: 4.68))
        combinedShape.addLine(to: CGPoint(x: 8.29, y: 0.29))
        combinedShape.addCurve(to: CGPoint(x: 9.71, y: 0.29), controlPoint1: CGPoint(x: 8.68, y: -0.1), controlPoint2: CGPoint(x: 9.32, y: -0.1))
        combinedShape.addLine(to: CGPoint(x: 13.71, y: 4.29))
        combinedShape.addCurve(to: CGPoint(x: 13.71, y: 5.71), controlPoint1: CGPoint(x: 14.1, y: 4.68), controlPoint2: CGPoint(x: 14.1, y: 5.32))
        combinedShape.addCurve(to: CGPoint(x: 12.29, y: 5.71), controlPoint1: CGPoint(x: 13.32, y: 6.1), controlPoint2: CGPoint(x: 12.68, y: 6.1))
        combinedShape.addLine(to: CGPoint(x: 10, y: 3.41))
        combinedShape.close()
        combinedShape.move(to: CGPoint(x: 0, y: 11))
        combinedShape.addCurve(to: CGPoint(x: 1, y: 10), controlPoint1: CGPoint(x: 0, y: 10.45), controlPoint2: CGPoint(x: 0.45, y: 10))
        combinedShape.addCurve(to: CGPoint(x: 2, y: 11), controlPoint1: CGPoint(x: 1.55, y: 10), controlPoint2: CGPoint(x: 2, y: 10.45))
        combinedShape.addLine(to: CGPoint(x: 2, y: 19))
        combinedShape.addCurve(to: CGPoint(x: 3, y: 20), controlPoint1: CGPoint(x: 2, y: 19.55), controlPoint2: CGPoint(x: 2.45, y: 20))
        combinedShape.addLine(to: CGPoint(x: 15, y: 20))
        combinedShape.addCurve(to: CGPoint(x: 16, y: 19), controlPoint1: CGPoint(x: 15.55, y: 20), controlPoint2: CGPoint(x: 16, y: 19.55))
        combinedShape.addLine(to: CGPoint(x: 16, y: 11))
        combinedShape.addCurve(to: CGPoint(x: 17, y: 10), controlPoint1: CGPoint(x: 16, y: 10.45), controlPoint2: CGPoint(x: 16.45, y: 10))
        combinedShape.addCurve(to: CGPoint(x: 18, y: 11), controlPoint1: CGPoint(x: 17.55, y: 10), controlPoint2: CGPoint(x: 18, y: 10.45))
        combinedShape.addLine(to: CGPoint(x: 18, y: 19))
        combinedShape.addCurve(to: CGPoint(x: 15, y: 22), controlPoint1: CGPoint(x: 18, y: 20.66), controlPoint2: CGPoint(x: 16.66, y: 22))
        combinedShape.addLine(to: CGPoint(x: 3, y: 22))
        combinedShape.addCurve(to: CGPoint(x: 0, y: 19), controlPoint1: CGPoint(x: 1.34, y: 22), controlPoint2: CGPoint(x: 0, y: 20.66))
        combinedShape.addLine(to: CGPoint(x: 0, y: 11))
        combinedShape.close()
        context.saveGState()
        context.translateBy(x: 3, y: 1)
        UIColor.black.setFill()
        combinedShape.fill()
        context.restoreGState()
        
        /// Combined Shape (Outline Mask)
        context.saveGState()
        combinedShape.apply(CGAffineTransform(translationX: 3, y: 1))
        combinedShape.addClip()
        
        /// COLOR/ black
        // Warning: New symbols are not supported.
        
        context.restoreGState()
        // End Combined Shape (Outline Mask)
        
        context.restoreGState()
    }
}

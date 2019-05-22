//
//  UserDraw.swift
//  PaintCodeKit
//
//  Created by Alberto Aznar de los Ríos on 04/05/2019.
//

import UIKit

extension PaintCodeImages {
    
    class func drawUser(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 26, height: 26), resizing: ResizingBehavior = .aspectFit, color: UIColor = .darkGray) {
        /// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        /// Resize to Target Frame
        context.saveGState()
        let resizedFrame = resizing.apply(rect: CGRect(x: 0, y: 0, width: 24, height: 24), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 24, y: resizedFrame.height / 24)
        
        /// Combined Shape
        let combinedShape = UIBezierPath()
        combinedShape.move(to: CGPoint(x: 18, y: 19))
        combinedShape.addCurve(to: CGPoint(x: 17, y: 20), controlPoint1: CGPoint(x: 18, y: 19.55), controlPoint2: CGPoint(x: 17.55, y: 20))
        combinedShape.addCurve(to: CGPoint(x: 16, y: 19), controlPoint1: CGPoint(x: 16.45, y: 20), controlPoint2: CGPoint(x: 16, y: 19.55))
        combinedShape.addLine(to: CGPoint(x: 16, y: 17))
        combinedShape.addCurve(to: CGPoint(x: 13, y: 14), controlPoint1: CGPoint(x: 16, y: 15.34), controlPoint2: CGPoint(x: 14.66, y: 14))
        combinedShape.addLine(to: CGPoint(x: 5, y: 14))
        combinedShape.addCurve(to: CGPoint(x: 2, y: 17), controlPoint1: CGPoint(x: 3.34, y: 14), controlPoint2: CGPoint(x: 2, y: 15.34))
        combinedShape.addLine(to: CGPoint(x: 2, y: 19))
        combinedShape.addCurve(to: CGPoint(x: 1, y: 20), controlPoint1: CGPoint(x: 2, y: 19.55), controlPoint2: CGPoint(x: 1.55, y: 20))
        combinedShape.addCurve(to: CGPoint(x: 0, y: 19), controlPoint1: CGPoint(x: 0.45, y: 20), controlPoint2: CGPoint(x: 0, y: 19.55))
        combinedShape.addLine(to: CGPoint(x: 0, y: 17))
        combinedShape.addCurve(to: CGPoint(x: 5, y: 12), controlPoint1: CGPoint(x: 0, y: 14.24), controlPoint2: CGPoint(x: 2.24, y: 12))
        combinedShape.addLine(to: CGPoint(x: 13, y: 12))
        combinedShape.addCurve(to: CGPoint(x: 18, y: 17), controlPoint1: CGPoint(x: 15.76, y: 12), controlPoint2: CGPoint(x: 18, y: 14.24))
        combinedShape.addLine(to: CGPoint(x: 18, y: 19))
        combinedShape.close()
        combinedShape.move(to: CGPoint(x: 9, y: 10))
        combinedShape.addCurve(to: CGPoint(x: 4, y: 5), controlPoint1: CGPoint(x: 6.24, y: 10), controlPoint2: CGPoint(x: 4, y: 7.76))
        combinedShape.addCurve(to: CGPoint(x: 9, y: 0), controlPoint1: CGPoint(x: 4, y: 2.24), controlPoint2: CGPoint(x: 6.24, y: 0))
        combinedShape.addCurve(to: CGPoint(x: 14, y: 5), controlPoint1: CGPoint(x: 11.76, y: 0), controlPoint2: CGPoint(x: 14, y: 2.24))
        combinedShape.addCurve(to: CGPoint(x: 9, y: 10), controlPoint1: CGPoint(x: 14, y: 7.76), controlPoint2: CGPoint(x: 11.76, y: 10))
        combinedShape.close()
        combinedShape.move(to: CGPoint(x: 9, y: 8))
        combinedShape.addCurve(to: CGPoint(x: 12, y: 5), controlPoint1: CGPoint(x: 10.66, y: 8), controlPoint2: CGPoint(x: 12, y: 6.66))
        combinedShape.addCurve(to: CGPoint(x: 9, y: 2), controlPoint1: CGPoint(x: 12, y: 3.34), controlPoint2: CGPoint(x: 10.66, y: 2))
        combinedShape.addCurve(to: CGPoint(x: 6, y: 5), controlPoint1: CGPoint(x: 7.34, y: 2), controlPoint2: CGPoint(x: 6, y: 3.34))
        combinedShape.addCurve(to: CGPoint(x: 9, y: 8), controlPoint1: CGPoint(x: 6, y: 6.66), controlPoint2: CGPoint(x: 7.34, y: 8))
        combinedShape.close()
        context.saveGState()
        context.translateBy(x: 3, y: 2)
        color.setFill()
        combinedShape.fill()
        context.restoreGState()
        
        /// Combined Shape (Outline Mask)
        context.saveGState()
        combinedShape.apply(CGAffineTransform(translationX: 3, y: 2))
        combinedShape.addClip()
        
        /// COLOR/ black
        // Warning: New symbols are not supported.
        
        context.restoreGState()
        // End Combined Shape (Outline Mask)
        
        context.restoreGState()
    }
}

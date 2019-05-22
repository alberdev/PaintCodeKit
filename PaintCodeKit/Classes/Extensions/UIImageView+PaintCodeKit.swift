//
//  UIImageView+PaintCodeKit.swift
//  PaintCodeKit
//
//  Created by Alberto Aznar de los Ríos on 04/05/2019.
//

import UIKit

public extension UIImageView {
    
    var size: CGSize {
        return frame.size
    }
    
    func draw(_ name: PaintCodeDraw, size: CGSize? = nil, color: UIColor? = nil, cached: Bool? = nil) {
        var usedSize = self.size
        if let size = size { usedSize = size }
        image = PaintCodeManager.shared.obtainImage(name, size: usedSize, color: color, cached: cached)
    }
}

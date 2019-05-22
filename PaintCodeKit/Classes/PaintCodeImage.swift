//
//  PaintCodeImage.swift
//  PaintCodeKit
//
//  Created by Alberto Aznar de los Ríos on 04/05/2019.
//

import Foundation

public protocol PaintCodeDraw {
    func draw(size: CGSize, color: UIColor)
}

extension PaintCodeDraw {
    
    var description: String {
        return "\(type(of: self)).\(self.self)"
    }
}

public enum PaintCodeImage: String, PaintCodeDraw {
    
    case user
    
    public func draw(size: CGSize, color: UIColor) {
        switch self {
        case .user: PaintCodeImages.drawUser(frame: CGRect(origin: .zero, size: size), resizing: .aspectFit, color: color)
        }
    }
}

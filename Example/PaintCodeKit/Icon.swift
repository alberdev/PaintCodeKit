//
//  Icon.swift
//  PaintCodeKit_Example
//
//  Created by Alberto Aznar de los Ríos on 04/05/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import PaintCodeKit

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

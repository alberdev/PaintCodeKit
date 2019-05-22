//
//  PaintCodeManager.swift
//  PaintCodeKit
//
//  Created by Alberto Aznar de los Ríos on 04/05/2019.
//

import Foundation

public class PaintCodeManager {
    
    public static let shared = PaintCodeManager()
    
    // Default values
    public var defaultSize = CGSize(width: 30, height: 30)
    public var defaultColor = UIColor.black
    public var defaultCached = true
    
    // Cached images
    struct LocalCache {
        var name: String
        var image: UIImage
    }
    
    private var images = [LocalCache]()
    
    init(){}
    
    func obtainImage(_ name: PaintCodeDraw, size: CGSize? = nil, color: UIColor? = nil, cached: Bool? = nil) -> UIImage {
        
        // Local cache images
        if cached ?? true, let cache = images.first(where: { $0.name == name.description }) {
            return cache.image
        }
        
        var image: UIImage
        UIGraphicsBeginImageContextWithOptions(size ?? defaultSize, false, 0)
        name.draw(size: size ?? defaultSize, color: color ?? defaultColor)
        image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        if cached ?? true {
            images.append(LocalCache(name: name.description, image: image))
        }
        
        return image
    }
}

extension PaintCodeManager {
    
    public static func image(_ name: PaintCodeDraw, size: CGSize? = nil, color: UIColor? = nil, cached: Bool? = nil) -> UIImage {
        return self.shared.obtainImage(name, size: size, color: color, cached: cached)
    }
}

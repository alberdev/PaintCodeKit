//
//  ViewController.swift
//  PaintCodeKit
//
//  Created by alberdev on 05/04/2019.
//  Copyright (c) 2019 alberdev. All rights reserved.
//

import UIKit
import PaintCodeKit

class ViewController: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var shareImageView: UIImageView!
    @IBOutlet weak var bellImageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fill image views
        userImageView.draw(PaintCodeImage.user)
        shareImageView.draw(Icon.shareApp)
        bellImageView.draw(Icon.bell)
        
        // Fill button
        let image = PaintCodeManager.image(PaintCodeImage.user)
        button.layer.cornerRadius = 5
        button.setImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
        button.setImage(image.withRenderingMode(.alwaysTemplate), for: .highlighted)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.tintColor = .white
    }
}


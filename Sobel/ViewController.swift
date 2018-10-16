//
//  ViewController.swift
//  Sobel
//
//  Created by WEI QIN on 2018/10/12.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(contentsOfFile: Bundle.main.path(forResource: "jobs", ofType: "png")!)
        
        let imageView = UIImageView(frame: view.bounds)
        
        let edgedImage = Sobel.sobelEdgeDetection(image: image!)
        
        let points = Sobel.pointArray(highlightedEdgesImage: edgedImage!)
        
        imageView.image = edgedImage
        
        imageView.contentMode = .scaleAspectFit
        
        view.addSubview(imageView)
    }


}


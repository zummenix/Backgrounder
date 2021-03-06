//
//  Configuration.swift
//  Backgrounder
//
//  Created by Alex Agapov on 05/12/2017.
//  Copyright © 2017 Alex Agapov. All rights reserved.
//

import UIKit

struct Configuration {
    struct API {
        static let unsplashApplicationID = "59af28f7c5647b64e316f8d9ae2665c9bc274cafb6db21e06f9cf5fe063896d4"
    }

    struct Color {
        static let tintColor: UIColor = #colorLiteral(red: 0.2082854211, green: 0.2843391895, blue: 0.3764083385, alpha: 1) // flat navy blue light from Chameleon
    }

    struct Size {
        static let screenWidth = UIScreen.main.bounds.width
        static let padding: CGFloat = 8
    }
}

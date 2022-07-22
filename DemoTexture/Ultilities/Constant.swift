//
//  Constant.swift
//  DemoTexture
//
//  Created by Nguyen Quang Hung on 21/07/2022.
//

import UIKit

struct Constants {
    struct Unsplash {
        struct URLS {
            static let Host = "https://api.unsplash.com/"
            static let PopularEndpoint = "photos?order_by=popular"
            static let SearchEndpoint = "photos/search?geo="    //latitude,longitude,radius<units>
            static let UserEndpoint = "photos?user_id="
            static let ConsumerKey = "&client_id=3b99a69cee09770a4a0bbb870b437dbda53efb22f6f6de63714b71c4df7c9642"
            static let ImagesPerPage = 30
        }
    }

    struct CellLayout {
        static let FontSize: CGFloat = 14
        static let HeaderHeight: CGFloat = 50
        static let UserImageHeight: CGFloat = 30
        static let HorizontalBuffer: CGFloat = 20
        static let VerticalBuffer: CGFloat = 5
        static let InsetForAvatar = UIEdgeInsets(top: HorizontalBuffer, left: 0, bottom: HorizontalBuffer, right: HorizontalBuffer)
        static let InsetForHeader = UIEdgeInsets(top: 0, left: HorizontalBuffer, bottom: 0, right: HorizontalBuffer)
        static let InsetForFooter = UIEdgeInsets(top: VerticalBuffer, left: HorizontalBuffer, bottom: VerticalBuffer, right: HorizontalBuffer)
    }
    
    struct Color {
        static let background = UIColor(rgb: 0xF3F5FB)
        static let greenBold = UIColor(rgb: 0x2C8667)
        static let greenLight = UIColor(rgb: 0x2C8667, alpha: 0.3)
        static let greenExtraLight = UIColor(rgb: 0x0EAD69, alpha: 0.05)
        static let borderGray = UIColor(rgb: 0xEEEFF4)
        static let grayLight = UIColor(rgb: 0x242A61, alpha: 0.3)
        static let grayBold = UIColor(rgb: 0xD9DBE1)
        
        static let startGradientIntro = UIColor(rgb: 0xA6F1F7)
        static let endGradientIntro = UIColor(rgb: 0xF3F5FB)
        
        static let fontBlack = UIColor(rgb: 0x242A61)
    }
    
}


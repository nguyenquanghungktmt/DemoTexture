//
//  PhotoCornerOverlay.swift
//  DemoTexture
//
//  Created by Nguyen Quang Hung on 21/07/2022.
//

import AsyncDisplayKit

class PhotoCornerOverlay : BaseNode {
    let photo = ASNetworkImageNode()
    let icon = ASImageNode()
    
    override init() {
        super.init()
        backgroundColor = .clear
        
        photo.url = URL(string: "https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg")
        icon.image = UIImage(named: "ic_add")
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        photo.style.preferredSize = CGSize(width: 200.0, height: 200.0)
        icon.style.preferredSize = CGSize(width: 30, height: 30)
        icon.backgroundColor = .white
        icon.cornerRadius = 15
        
        icon.imageModificationBlock = { (image, traitCollection) -> UIImage in
          let profileImageSize = CGSize(width: 60, height: 60)
          return image.makeCircularImage(size: profileImageSize, borderWidth: 5)
        }
        
        let cornerSpec = ASCornerLayoutSpec(child: photo, corner: icon, location: .topRight)
        
        // set location of corner icon, default is CGPointZero
        cornerSpec.offset = CGPoint(x: -3, y: 3)
        return cornerSpec
    }
    
}

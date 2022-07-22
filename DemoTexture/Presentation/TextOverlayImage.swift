//
//  PhotoTextOverlay.swift
//  DemoTexture
//
//  Created by Nguyen Quang Hung on 21/07/2022.
//

import AsyncDisplayKit

class TextOverlayImage : ASDisplayNode{
    var img = ASNetworkImageNode()
    var text = ASTextNode()
    
    override init() {
        super.init()
        automaticallyManagesSubnodes = true
        backgroundColor = .clear
        
        img.url = URL(string: "https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg")
        text.attributedText = NSAttributedString.init(string: "Điểm hay ở đây chính là 2 trạng thái Preload và Display bạn có thể custom độ dài của nó, có nghĩa là bạn có thể thay đổi cho phần preload lên thành 2 màn hình hay Display lên thành 3 màn hình, tuỳ thuộc vào mong muốn, tuy nhiên khi tăng lên như vậy có nghĩa là dung lượng của 2 phần này cũng tăng lên. Chính vì vậy bạn cần cân nhắc nó bao nhiêu là hợp lý.")
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        /// set size for image
        img.style.preferredSize = CGSize(
            width: 300,
            height: 300
        )
        
//        let photoDimension: CGFloat = constrainedSize.max.width / 4.0
//        img.style.preferredSize = CGSize(width: photoDimension, height: photoDimension)
        
        /// set inset for text
        let insets = UIEdgeInsets(top: CGFloat.infinity, left: 12, bottom: 12, right: CGFloat.infinity)
        let textInsetSpec = ASInsetLayoutSpec(insets: insets, child: text)
        
        /// set text overlay in image
        let overlaySpec = ASOverlayLayoutSpec(child: img, overlay: textInsetSpec)
        return overlaySpec
    }
}

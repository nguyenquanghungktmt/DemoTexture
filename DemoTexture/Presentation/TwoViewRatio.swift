//
//  TwoViewRatio.swift
//  DemoTexture
//
//  Created by Nguyen Quang Hung on 21/07/2022.
//

import AsyncDisplayKit

class TwoViewRatio: BaseNode {
    let nodeView = ASDisplayNode()
    let parentView = ASDisplayNode()
    
    let photoImageNode: ASNetworkImageNode = {
        let node = ASNetworkImageNode()
        node.contentMode = .scaleAspectFit
        return node
    }()
    
    override init() {
        super.init()
        
        nodeView.style.preferredSize = CGSize(width: 10, height: 10)
        nodeView.backgroundColor = .blue
        
        photoImageNode.url = URL(string: "https://bvsoft.vn/uploads/article/1/nhuoc-thi.png")
        
        
        parentView.backgroundColor = .green
        parentView.style.height = ASDimensionMake(80)
        parentView.clipsToBounds = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec{
      // Half Ratio
        
        let spec = ASWrapperLayoutSpec(layoutElement: parentView)
        
        return spec
    }
}

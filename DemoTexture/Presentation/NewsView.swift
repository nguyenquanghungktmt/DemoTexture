//
//  NewsView.swift
//  DemoTexture
//
//  Created by Nguyen Quang Hung on 21/07/2022.
//

import Foundation
import AsyncDisplayKit

class NewsView: ASDisplayNode {

    // MARK: Properties
    
    let usernameLabel = ASTextNode()
    let timeIntervalLabel = ASTextNode()
    let photoLikesLabel = ASTextNode()
    let photoDescriptionLabel = ASTextNode()
    
    let avatarImageNode: ASNetworkImageNode = {
        let node = ASNetworkImageNode()
        node.contentMode = .scaleAspectFill
        // Set the imageModificationBlock for a rounded avatar
        node.imageModificationBlock = ASImageNodeRoundBorderModificationBlock(0, nil)
        return node
    }()
    
    let photoImageNode: ASNetworkImageNode = {
        let node = ASNetworkImageNode()
        node.contentMode = .scaleAspectFill
        return node
    }()
    
    // MARK: Lifecycle
    
    override init() {
        super.init()

        automaticallyManagesSubnodes = true
        photoImageNode.url = URL(string: "https://bvsoft.vn/uploads/article/1/nhuoc-thi.png")
        avatarImageNode.url = URL(string: "https://khoinguonsangtao.vn/wp-content/uploads/2022/07/avatar-cute-2.jpg")
        usernameLabel.attributedText = NSAttributedString.init(string: "Hung Nguyen Hung Nguyen Hung Nguyen Hung Nguyen ")
        timeIntervalLabel.attributedText = NSAttributedString.init(string: "15 days")
        photoLikesLabel.attributedText = NSAttributedString.init(string: "photoLikesLabel")
        photoDescriptionLabel.attributedText = NSAttributedString.init(string: "photoDescriptionLabel")
    }
    
    // MARK: ASDisplayNode
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        // Header Stack
        
        var headerChildren: [ASLayoutElement] = []
        
        let headerStack = ASStackLayoutSpec.horizontal()
        headerStack.alignItems = .center
        
        /// set size for avatar
        avatarImageNode.style.preferredSize = CGSize(
            width: 30,
            height: 30
        )
        
        // ??
        headerChildren.append(ASInsetLayoutSpec(insets: Constants.CellLayout.InsetForAvatar, child: avatarImageNode))
        
        usernameLabel.style.flexShrink = 1.0
        headerChildren.append(usernameLabel)
        
        let spacer = ASLayoutSpec()
        spacer.style.flexGrow = 1.0
        headerChildren.append(spacer)
        
        timeIntervalLabel.style.spacingBefore = Constants.CellLayout.HorizontalBuffer
        headerChildren.append(timeIntervalLabel)
        
        let footerStack = ASStackLayoutSpec.vertical()
        footerStack.spacing = Constants.CellLayout.VerticalBuffer
        footerStack.children = [photoLikesLabel, photoDescriptionLabel]
        headerStack.children = headerChildren
        
        let verticalStack = ASStackLayoutSpec.vertical()
        verticalStack.children = [
            ASInsetLayoutSpec(insets: Constants.CellLayout.InsetForHeader, child: headerStack),
            ASRatioLayoutSpec(ratio: 1.0, child: photoImageNode),
            ASInsetLayoutSpec(insets: Constants.CellLayout.InsetForFooter, child: footerStack)
        ]
        return verticalStack
    }
}

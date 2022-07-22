//
//  TextPresentation.swift
//  DemoTexture
//
//  Created by Nguyen Quang Hung on 20/07/2022.
//

import AsyncDisplayKit

class TextPresentation : ASDisplayNode {
  let userNameNode     = ASTextNode()
  let postLocationNode = ASTextNode()
  let postTimeNode     = ASTextNode()

    override init() {
    super.init()
    automaticallyManagesSubnodes = true
    backgroundColor = .gray

    userNameNode.attributedText = NSAttributedString.attributedString(string: "hung demo text", fontSize: 20, color: .blue)
    userNameNode.truncationMode = .byTruncatingTail

    postLocationNode.attributedText = NSAttributedString.attributedString(string: "Sunset Beach, San Fransisco, CA", fontSize: 20, color: .lightBlueColor())
    postTimeNode.maximumNumberOfLines = 3
    postLocationNode.truncationMode = .byTruncatingTail

    postTimeNode.attributedText = NSAttributedString.attributedString(string: "30m", fontSize: 20, color: .lightGray)
    postTimeNode.maximumNumberOfLines = 1
    postTimeNode.truncationMode = .byTruncatingTail
  }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        /// set layout for nodes
        let nameLocationStack = ASStackLayoutSpec.vertical()
        nameLocationStack.style.flexShrink = 1.0
        nameLocationStack.style.flexGrow = 1.0

        if postLocationNode.attributedText != nil {
        nameLocationStack.children = [userNameNode, postLocationNode]
        } else {
        nameLocationStack.children = [userNameNode]
        }

        let headerStackSpec = ASStackLayoutSpec(direction: .horizontal,
                                              spacing: 10,
                                              justifyContent: .start,
                                              alignItems: .center,
                                              children: [nameLocationStack, postTimeNode])

        return ASInsetLayoutSpec(insets: UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10), child: headerStackSpec)
    }

}

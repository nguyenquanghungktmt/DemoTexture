//
//  Home.swift
//  DemoTexture
//
//  Created by Nguyen Quang Hung on 20/07/2022.
//

import AsyncDisplayKit

class HomePresentation: BaseNode {
    let table = ASTableNode()
    let dataSource = HomeTableNodeDataSource()
    
    override init() {
        super.init()
        table.allowsSelection = false
        table.backgroundColor = .blue
        table.dataSource = dataSource
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASInsetLayoutSpec(insets: UIEdgeInsets.zero, child: self.table)
    }
    
//    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
//        let cell = NewsFeedCell(with: UIImage(named: "img_home") ?? UIImage())
//        return cell
//    }
}

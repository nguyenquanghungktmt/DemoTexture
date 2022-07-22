//
//  HomeTableNodeDataSource.swift
//  InstaClone
//
//  Created by Philip Martin on 13/12/2019.
//  Copyright © 2019 Phil Martin. All rights reserved.
//

import AsyncDisplayKit

class HomeTableNodeDataSource: NSObject, ASTableDataSource{

//    var reloadTableView: (() -> Void)?
//    private var dataSource: BaseDataSource?
    
//    func fetchDataFromLocalPath(){
//        dataSource = Bundle.main.decode(BaseDataSource.self, from: localJSONFile)
//        if let _ = dataSource{
//            reloadTableView?()
//        }else{
//            fatalError("Couldn't get data from bundle extension")
//        }
//    }
    
    func numberOfSections(in tableNode: ASTableNode) -> Int {
        return 2
    }
    
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : 20
    }
    
    private func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNode {
        let cell = NewsFeedCell(with: UIImage(named: "img_home") ?? UIImage())
        return cell
    }
    
    //MARK:- Delegate
    func tableNode(_ tableNode: ASTableNode, nodeForRowAt indexPath: IndexPath) -> ASCellNode {
        let cell = NewsFeedCell(with: UIImage(named: "img_home") ?? UIImage())
        return cell
    }
}

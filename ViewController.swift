//
//  ViewController.swift
//  fbMessenger
//
//  Created by Cheng Ka Ho on 10/2/2019.
//  Copyright © 2019 Cheng Ka Ho. All rights reserved.
//

import UIKit

class FriendsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        collectionView.backgroundColor = UIColor.white
        collectionView.register(FriendCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.alwaysBounceVertical = true
        
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    class FriendCell: UICollectionViewCell {
        override init(frame: CGRect) {
            super .init(frame: frame)
            
            setupView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupView() {
            backgroundColor = UIColor.blue
        }
    }
}

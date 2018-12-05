//
//  ALKFriendGenericCardCell.swift
//  ApplozicSwift
//
//  Created by Shivam Pokhriyal on 05/12/18.
//

import Foundation
import Applozic

open class ALKFriendGenericCardCell: ALKChatBaseCell<ALKMessageViewModel> {
    
    open var collectionView: ALKIndexedCollectionView!
    
    var height: CGFloat!
    
    var messageView: GenericCardsMessageView = {
        return GenericCardsMessageView()
    }()
    
    override public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func update(viewModel: ALKMessageViewModel) {
        self.viewModel = viewModel
        messageView.update(viewModel: viewModel)
        collectionView.setMessage(viewModel: viewModel)
        collectionView.reloadData()
    }
    
    override func setupViews() {
        setupCollectionView()
        
        contentView.addViewsForAutolayout(views: [self.collectionView, self.messageView])
        contentView.bringSubview(toFront: messageView)
        
        messageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        messageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        messageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -95).isActive = true
        messageView.heightAnchor.constraint(lessThanOrEqualToConstant: 1000).isActive = true
        messageView.layoutIfNeeded()
        
        collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
        collectionView.topAnchor.constraint(equalTo: messageView.bottomAnchor, constant: 10).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
    }
    
    
    public class func rowHeightFor(message: ALKMessageViewModel) -> CGFloat {
        // Update height based on number of buttons
        // present and if image is set.
        return ALKGenericCardCollectionView.rowHeightFor(message:message) + GenericCardsMessageView.rowHeigh(viewModel: message, widthNoPadding: UIScreen.main.bounds.width - 280)
    }
    
    open func setCollectionViewDataSourceDelegate(dataSourceDelegate delegate: UICollectionViewDelegate & UICollectionViewDataSource, index: NSInteger) {
        collectionView.dataSource = delegate
        collectionView.delegate = delegate
        collectionView.tag = index
        collectionView.reloadData()
    }
    
    open func setCollectionViewDataSourceDelegate(dataSourceDelegate delegate: UICollectionViewDelegate & UICollectionViewDataSource, indexPath: IndexPath) {
        collectionView.dataSource = delegate
        collectionView.delegate = delegate
        collectionView.indexPath = indexPath
        collectionView.tag = indexPath.section
        collectionView.reloadData()
    }
    
    open func register(cell: UICollectionViewCell.Type) {
        collectionView.register(cell, forCellWithReuseIdentifier: cell.reuseIdentifier)
    }
    
    private func setupCollectionView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 5)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize(width: 91, height: 91)
        layout.scrollDirection = .horizontal
        collectionView = ALKIndexedCollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        layoutMargins = UIEdgeInsetsMake(10, 0, 10, 0)
    }
}


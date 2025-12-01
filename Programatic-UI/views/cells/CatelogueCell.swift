//
//  CatelogueCell.swift
//  Programatic-UI
//
//  Created by Ashfak Ahamed Alauddeen on 30/11/25.
//

import UIKit

class CatelogueCell: UITableViewCell{
    
    static let id = "CatelogueCell"
    private let cellTitle =  UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        contentView.addSubview(cellTitle)
        cellTitle.font = .systemFont(ofSize: 14, weight: .medium)
    }
    
    private func setupConstraints(){
        cellTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cellTitle.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            cellTitle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    func configure(title: String){
        self.cellTitle.text = title
    }
    
}


//
//  ProductTableViewCell.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    var iconImv:UIImageView!
    var price: UILabel!
    var proDetail: UILabel!
    var proTitle: UILabel!
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconImv = UIImageView(frame: CGRect(x: 10, y: 15, width: 90, height: 120))
        iconImv.image = UIImage.init(named: "productImage");
          
        price = UILabel(frame: CGRect(x: 110, y: 15, width: UIScreen.main.bounds.width-120, height: 20))
        price.textColor = UIColor.black
        price.font = UIFont.boldSystemFont(ofSize: 17)
        price.textAlignment = .left
        price.text = "杜康酒1500ml罐装"
          
        proDetail = UILabel(frame: CGRect(x: 110, y: 35, width: UIScreen.main.bounds.width-120, height: 70))
        proDetail.textColor = UIColor.black
        proDetail.font = UIFont.systemFont(ofSize: 16)
        proDetail.textAlignment = .left
        proDetail.numberOfLines = 0;
        proDetail.text = "何以解忧，唯有杜康。纯粮食酿造，国庆大酬宾。"
          
        proTitle = UILabel(frame: CGRect(x: UIScreen.main.bounds.width-102, y: 115, width: 92, height: 20))
        proTitle.textColor = UIColor.gray
        proTitle.font = UIFont.systemFont(ofSize: 15)
        proTitle.textAlignment = .center
        proTitle.text = "59元"
          
        contentView.addSubview(iconImv)
        contentView.addSubview(price)
        contentView.addSubview(proDetail)
        contentView.addSubview(proTitle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

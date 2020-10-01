//
//  MyTableViewCell.swift
//  CustomCell
//
//  Created by Yuki Shinohara on 2020/10/01.
//

///※XIBファイルで可変にしたいLabelのAutoLayoutの上下をSuperViewで設定する。下や上にパーツをおきたい場合はその大きさだけSuperViewから距離を取ること！！！！１

import UIKit

class MyTableViewCell: UITableViewCell {
    
//    登録用
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    @IBOutlet weak var myImage: UIImageView!
    
    public func configure(title: String, imageName: String){
//        myLabel.text = title
//        myImage.image = UIImage(named: imageName)
        myImage.image = UIImage(systemName: "person.circle")
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
//        myImage.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

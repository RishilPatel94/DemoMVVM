//
//  MissinListTableViewCell.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import UIKit
import Kingfisher


class MissinListTableViewCell: UITableViewCell , ReusableView {

    @IBOutlet var misssionImage : UIImageView!
    @IBOutlet var missionName : UILabel!
    @IBOutlet var rocketName : UILabel!
    @IBOutlet var siteName : UILabel!
    @IBOutlet var launchDate : UILabel!

    var missionViewModel : LauchViewModel? {
        didSet {
            if let viewModel = missionViewModel {
                missionName.text = viewModel.missionName
                rocketName.text  = viewModel.rocketName
                siteName.text = viewModel.launchSite
                launchDate.text = viewModel.launchDate
                if let missionImage = viewModel.missionImage {
                    misssionImage.kf.setImage(with: missionImage, placeholder: UIImage(named: "placeholder"))
                }
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

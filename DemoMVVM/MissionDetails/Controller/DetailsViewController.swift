//
//  DetailsViewController.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var detailTableView: UITableView!

    var missionViewModel : SectionRepresentable!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTableView.tableFooterView = UIView()
        self.detailTableView.reloadData()
        self.detailTableView.estimatedRowHeight = 80
        self.detailTableView.rowHeight = UITableView.automaticDimension

        // Do any additional setup after loading the view.
    }
}

extension DetailsViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        var numOfSections: Int = 0
        if missionViewModel?.sectionCount ?? 0 > 0
        {
            tableView.separatorStyle = .singleLine
            numOfSections = 1
            tableView.backgroundView = nil
        }
        else
        {
            let noDataLabel: UILabel  = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: tableView.bounds.size.height))
            noDataLabel.text = "Please select Mission for details"
            noDataLabel.textAlignment = .center
            tableView.backgroundView = noDataLabel
            tableView.separatorStyle = .none
        }
        return numOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if missionViewModel != nil {
           return  missionViewModel.sectionCount
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let keyName = missionViewModel.getKeyName(by: indexPath.row)
        if let value = missionViewModel?[keyName] as? String {
            let cell : DetailsTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.detailLabel.text = value
            cell.accessoryType = .none
            return cell
        }
        else if let value = missionViewModel?[keyName] as? URL {
            let cell : MissinListTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.accessoryType = .none
            cell.misssionImage.kf.setImage(with: value, placeholder: UIImage(named: "placeholder"))
            return cell
        }
        else {
            let cell : DetailsTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.detailLabel.text = keyName
            cell.accessoryType = .disclosureIndicator
            return cell
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let keyName = missionViewModel.getKeyName(by: indexPath.row)
        if let value = missionViewModel?[keyName] as? SectionRepresentable {
            let detailsController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
            detailsController.missionViewModel = value
            self.navigationController?.pushViewController(detailsController, animated: true)
        }
    }
}




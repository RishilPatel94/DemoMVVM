//
//  MissionTableViewController.swift
//  DemoMVVM
//
//  Created by Rish on 11/20/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import UIKit

class MissionTableViewController: UITableViewController {
    
    private var missionListViewModel: MissionListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        loadData()
    }
    
    private func loadData() {
        missionListViewModel = MissionListViewModel()
        missionListViewModel.fetchdata {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if missionListViewModel != nil {
           return missionListViewModel.missionCount
        }
        return 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : MissinListTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.missionViewModel = missionListViewModel.getMissionViewModel(by: indexPath.row)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow{
            
            guard let navController = segue.destination as? UINavigationController,
                let destionNationController = navController.topViewController as? DetailsViewController
                else {
                    fatalError("Expected DetailViewController")
            }
            destionNationController.missionViewModel = missionListViewModel.getMissionViewModel(by: indexPath.row)
            
        }
    }
}

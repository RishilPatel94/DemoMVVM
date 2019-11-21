//
//  MissionListViewModel.swift
//  DemoMVVM
//
//  Created by Rish on 11/19/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation


class MissionListViewModel {
    //
    // MARK: Constants
    private struct Constant {
        static let urlString = "https://api.spacexdata.com/v3/launches/past"
    }
    //
    // MARK: Variables
    private var launchViewModels: [LauchViewModel]
    
    var missionCount: Int {
        return launchViewModels.count
    }
    
    init(launchModel: [LauchViewModel] = []) {
        self.launchViewModels = launchModel
    }
    
    /// Get perticular Mission's details from VM.[Testable function ]
    ///
    /// - Parameter index: particular array's index for get Mission's details
    /// - Returns: gives specific Mission's detailed model
    func getMissionViewModel(by index: Int) -> LauchViewModel {
        return launchViewModels[index]
    }
    
    func fetchdata(compltion: @escaping ()->()) {
        if let url = URL(string: Constant.urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let responseData = try JSONDecoder().decode([LaunchDetails].self, from: data)
                        self.buildViewModel(response: responseData)
                        compltion()
                    } catch let error {
                        print(error)
                    }
                }
                }.resume()
        }
    }
    
    /// buildViewModel from response data.[can make it testable function ]
    ///
    /// - Parameter response: array of [LaunchDetails]
    private func buildViewModel(response: [LaunchDetails]) {
        for model in response {
            let launchViewmodel = LauchViewModel(model: model)
            launchViewModels.append(launchViewmodel)
        }
    }
}






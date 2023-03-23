//
//  Task.swift
//  Project4
//
//  Created by Vanessa Li on 3/21/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite Restaurant!",
                 description: "Try the spaghetti!"),
            Task(title: "Favorite Hiking Spot!",
                 description: "Climb to the top!"),
            Task(title: "Favorite boba tea shop!",
                 description: "Try the taro boba tea!")
        ]
    }
}


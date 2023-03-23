//
//  TaskCell.swift
//  Project4
//
//  Created by Vanessa Li on 3/21/23.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var completedImageView: UIImageView!
    
    @IBOutlet weak var taskLabel: UILabel!
    
    func configure(with task: Task) {
        taskLabel.text = task.title
        taskLabel.textColor = task.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: task.isComplete ? "circle.inset.filled" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = task.isComplete ? .systemBlue : .tertiaryLabel
    }

}

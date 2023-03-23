//
//  TaskComposeViewController.swift
//  Project4
//
//  Created by Vanessa Li on 3/21/23.
//

import UIKit

class TaskComposeViewController: UIViewController {

    
    @IBOutlet weak var newTaskTitle: UITextField!
    
    @IBOutlet weak var newTaskDesc: UITextField!
    
    var onComposeTask: ((Task) -> Void)? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTapDone(_ sender: Any) {
        guard let title = newTaskTitle.text,
              let description = newTaskDesc.text,
              !title.isEmpty,
              !description.isEmpty else {
            presentEmptyFieldsAlert()
            return
        }

        let task = Task(title: title, description: description)
        onComposeTask?(task)
        dismiss(animated: true)
    }
    
    @IBAction func didTapCancel(_ sender: Any) {
        dismiss(animated: true)
    }

    private func presentEmptyFieldsAlert() {
        let alertController = UIAlertController(
            title: "Oops...",
            message: "Both title and description fields must be filled out",
            preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)

        present(alertController, animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

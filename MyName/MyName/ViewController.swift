//
//  ViewController.swift
//  MyName
//
//  Created by pylounge on 13.08.2020.
//  Copyright © 2020 pylounge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBAction func changeLabelText(_ sender: UIButton) {
        label.text = ("The \(sender.titleLabel!.text!.lowercased()) button pressed")
    }
    @IBAction func showMessage() -> Void{
        let alertController = UIAlertController(
            title: "Welcome to MyName App",
            message: "Maxim Melnikov",
            preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "First", style: UIAlertAction.Style.default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Second", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
}


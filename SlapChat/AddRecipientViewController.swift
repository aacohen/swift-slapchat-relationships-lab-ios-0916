//
//  AddRecipientViewController.swift
//  SlapChat
//
//  Created by Ariela Cohen on 11/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class AddRecipientViewController: UIViewController {

    @IBOutlet weak var recipientTextField: UITextField!
    @IBAction func saveRecipientButton(_ sender: Any) {
        let store = DataStore.sharedInstance
        let managedContext = store.persistentContainer.viewContext
        let newRecipient = NSEntityDescription.insertNewObject(forEntityName: "Recipient", into: managedContext) as! Recipient
        newRecipient.name = recipientTextField.text
        store.saveContext()
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  SecondViewController.swift
//  to-do-LIST
//
//  Created by admin on 30/03/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var inputTodoText: UITextField!
    @IBAction func SaveButton(_ sender: AnyObject) {
        let itemObjects = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        if let checkObjects = itemObjects as? [String]{
            items = checkObjects
            items.append(inputTodoText.text!)
            
        }
        else{
            items = [inputTodoText.text!]
        }
        inputTodoText.text = ""
        UserDefaults.standard.set(items, forKey : "items")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


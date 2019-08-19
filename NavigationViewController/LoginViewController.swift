//
//  LoginViewController.swift
//  NavigationViewController
//
//  Created by Mohamed on 8/19/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController : UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var btn_login: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        userName.delegate = self
        password.delegate = self
    }
    
    @IBAction func btn_Login(_ sender: UIButton) {
        
        getOurStoryboard()
        view.resignFirstResponder()
        
    }
    
    
    private func getOurStoryboard(){
        
        let mainNavigationStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let mainNavigation = mainNavigationStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else {
            
            return
        }
        
        present(mainNavigation , animated: true , completion: nil)
        
    }
    
  
    
}
extension LoginViewController : UITextFieldDelegate{
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
        
        
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        userName.resignFirstResponder()
        password.resignFirstResponder()
        return true
    }
    
}

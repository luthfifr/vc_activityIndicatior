//
//  ViewController.swift
//  viewController_activityIndicator
//
//  Created by Luthfi Fathur Rahman on 5/21/17.
//  Copyright © 2017 Luthfi Fathur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn_activityIndicator: UIButton!
    
    var activityIndicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn_activityIndicator.layer.cornerRadius = 5
        
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        view.addSubview(activityIndicator)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_activityIndicator(_ sender: Any) {
        activityIndicator.startAnimating()
        btn_activityIndicator.backgroundColor = UIColor.gray
        UIApplication.shared.beginIgnoringInteractionEvents()
        let delay = DispatchTime.now()+5
        DispatchQueue.main.asyncAfter(deadline: delay){
            self.activityIndicator.stopAnimating()
            UIApplication.shared.endIgnoringInteractionEvents()
            self.btn_activityIndicator.backgroundColor = UIColor.blue
        }
    }

}


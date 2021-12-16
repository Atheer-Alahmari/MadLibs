//
//  ViewController.swift
//  MadLibs
//
//  Created by Atheer Alahmari on 09/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var setence_Label: UILabel!
    
    var sentense = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
  
    }

    @IBAction func unwind (_ sender:UIStoryboardSegue){
        if let destination = sender.source as? ViewController2 {
            
        if let adj = destination.adj_TF.text ,
           let v1 = destination.verb1_TF.text ,
           let v2 = destination.verb2_TF.text ,
           let noun = destination.noun_TF.text {
                
                setence_Label.text = "We are having a perfectly \(adj) right now. Later we will \(v1) and \(v2) in the \(noun)"
                
            }
        }
    }
    
    
}


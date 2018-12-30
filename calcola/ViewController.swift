//
//  ViewController.swift
//  calcola
//
//  Created by Modi Nuovi on 09/10/2018.
//  Copyright © 2018 Modi Nuovi. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var operazione: UILabel!
    @IBOutlet weak var risultato: UILabel!
    @IBOutlet weak var addendo2: UILabel!
    @IBOutlet weak var addendo1: UILabel!
    
    var addendo=1
    override func viewDidLoad()
    {
        super.viewDidLoad()
        cancella("")
    }

    @IBAction func cancella(_ sender: Any)
    {
        operazione.text="?"
        risultato.text=""
        addendo1.text=""
        addendo2.text=""
        addendo=1
    }
    
    @IBAction func calcola(_ sender: Any)
    {
        if let a1 = Int(addendo1.text!),  let a2 = Int(addendo2.text!)
        {
        if operazione.text=="?"
        {
            risultato.text="?"
        }
        else
            if operazione.text=="+"
            {
                risultato.text = "\(a1+a2)"
            }
            else
                if operazione.text=="-"
                {
                    risultato.text = "\(a1-a2)"
                }
                else
                    if operazione.text==":"
                    {
                        if a2==0
                        {
                            risultato.text = "🤒"
                        }
                        else
                        {
                            var appo = Double(a1)/Double(a2)
                            appo=(appo * 1000.0).rounded()/1000
                        risultato.text = "\(appo)"
                        }
                    }
                    else
                        if operazione.text=="x"
                        {
                            risultato.text = "\(a1*a2)"
                        }
        }
    }
    @IBAction func moltiplica(_ sender: Any) {
        operazione.text="x"
    }
    @IBAction func somma(_ sender: Any) {
        operazione.text="+"
    }
    @IBAction func sottrai(_ sender: Any) {
        operazione.text="-"
    }
    @IBAction func dividi(_ sender: Any) {
        operazione.text=":"
    }
    
    @IBAction func metti0(_ sender: Any)
    {
        if addendo==1
        {
           addendo1.text="0"
        }
        else
        {
            addendo2.text="0"
        }
        addendo=2
    }
    @IBAction func metti1(_ sender: Any)
    {
        if addendo==1{addendo1.text="1"}else{addendo2.text="1"};addendo=2
    }
    @IBAction func metti2(_ sender: Any)
    {
        if addendo==1{addendo1.text="2"}else{addendo2.text="2"};addendo=2
    }
    @IBAction func metti3(_ sender: Any)
    {
        if addendo==1{addendo1.text="3"}else{addendo2.text="3"};addendo=2
    }
    @IBAction func metti4(_ sender: Any)
    {
        if addendo==1{addendo1.text="4"}else{addendo2.text="4"};addendo=2
    }
    @IBAction func metti5(_ sender: Any)
    {
        if addendo==1{addendo1.text="5"}else{addendo2.text="5"};addendo=2
    }
    @IBAction func metti6(_ sender: Any)
    {
        if addendo==1{addendo1.text="6"}else{addendo2.text="6"};addendo=2
    }
    @IBAction func metti7(_ sender: Any)
    {
        if addendo==1{addendo1.text="7"}else{addendo2.text="7"};addendo=2
    }
    @IBAction func metti8(_ sender: Any)
    {
        if addendo==1{addendo1.text="8"}else{addendo2.text="8"};addendo=2
    }
    @IBAction func metti9(_ sender: Any)
    {
        if addendo==1{addendo1.text="9"}else{addendo2.text="9"};addendo=2
    }
   
    
}


//
//  ThemeViewController.swift
//  DarkTheme
//
//  Created by Arkadijs Makarenko on 03/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {

    
    @IBOutlet weak var darkThemeButton: UIButton!
    var mainText: String = "Dark Theme off"
    var darkIsOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad from ViewController")
        darkThemeButton.layer.cornerRadius = 8
        navigationItem.title = mainText
        darkThemeButton.setTitle(mainText, for: .normal)
        // Do any additional setup after loading the view.
    }

    @IBAction func darkThemeButtonTapped(_ sender: Any) {
        
        darkThemeIsOn(isOn: darkIsOn)
        
    }
    
    func darkThemeIsOn(isOn: Bool){
        
        if(!isOn){
            mainText = "Dark Theme on"
            
            darkThemeButton.setTitleColor(UIColor.white, for: .normal)
            
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
            
            view.backgroundColor = UIColor.black
            
            darkIsOn = true;
        }
        else{
            mainText = "Dark Theme off"
            
            darkThemeButton.setTitleColor(UIColor.black, for: .normal)
            
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
            
            view.backgroundColor = UIColor.white
            
            darkIsOn = false;
        }
        
        darkThemeButton.setTitle(mainText, for: .normal)
        navigationItem.title = mainText
    }
}


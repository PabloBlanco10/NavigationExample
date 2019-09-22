//
//  FirstVC.swift
//  NavigationExample
//
//  Created by Pablo Blanco Peris on 19/09/2019.
//  Copyright © 2019 Pablo Blanco Peris. All rights reserved.
//

import UIKit

class FirstVC: BaseViewController {
    var coordinator : FirstCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func navigateAction(_ sender: Any) {
        coordinator?.navigate()
    }
}

class FirstCoordinator: Coordinator {
    let nib = "FirstVC"
    
    func start(){navigator?.show(viewController(), sender: nil)}
    
    func viewController() -> FirstVC {
        let viewControler = FirstVC(nibName: nib, bundle: nil)
        viewControler.coordinator = self
        return viewControler
    }
    
    func navigate(){
        SecondCoordinator(navigator).start()
    }
}

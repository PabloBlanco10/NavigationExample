//
//  SecondVC.swift
//  NavigationExample
//
//  Created by Pablo Blanco Peris on 19/09/2019.
//  Copyright © 2019 Pablo Blanco Peris. All rights reserved.
//

import UIKit

class SecondVC: BaseViewController {
    var coordinator : SecondCoordinator?

    override func viewDidLoad() { super.viewDidLoad() }
    
    @IBAction func navigateAction(_ sender: Any) { coordinator?.navigate() }

}

class SecondCoordinator: Coordinator {
    let nib = "SecondVC"
    
    func start(){
        //Push navigation
        navigator?.show(viewController(), sender: nil)
    }
    
    func viewController() -> SecondVC {
        let viewControler = SecondVC(nibName: nib, bundle: nil)
        viewControler.coordinator = self
        return viewControler
    }
    
    func navigate(){ ThirdCoordinator(navigator).start() }
}

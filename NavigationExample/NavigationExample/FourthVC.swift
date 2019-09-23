//
//  FourthVC.swift
//  NavigationExample
//
//  Created by Pablo Blanco Peris on 19/09/2019.
//  Copyright © 2019 Pablo Blanco Peris. All rights reserved.
//

import UIKit

class FourthVC: BaseViewController {
    var coordinator : FourthCoordinator?

    override func viewDidLoad() { super.viewDidLoad()
    }
    
    @IBAction func navigateAction(_ sender: Any) { coordinator?.navigate() }
}

class FourthCoordinator: Coordinator {
    let nib = "FourthVC"
    
    func start(){
        AppCoordinator.topViewController()?.show(viewController(), sender: nil)
    }
    
    func viewController() -> FourthVC {
        let viewControler = FourthVC(nibName: nib, bundle: nil)
        viewControler.coordinator = self
        return viewControler
    }
    
    func navigate(){
        //Back to root controller
        AppDelegate.appCoordinator?.setRootController()
    }
}

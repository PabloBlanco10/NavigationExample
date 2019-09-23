//
//  ThirdVC.swift
//  NavigationExample
//
//  Created by Pablo Blanco Peris on 19/09/2019.
//  Copyright © 2019 Pablo Blanco Peris. All rights reserved.
//

import UIKit

class ThirdVC: BaseViewController {
    var coordinator : ThirdCoordinator?

    override func viewDidLoad() { super.viewDidLoad() }
    
    @IBAction func backNavigation(_ sender: Any) { coordinator?.back() }
    
    @IBAction func navigateAction(_ sender: Any) { coordinator?.navigate() }
}

class ThirdCoordinator: Coordinator {
    let nib = "ThirdVC"
    
    //Add new navigation controller - Another section of app (?)
    lazy var newNavigator = UINavigationController(rootViewController: viewController())
    
    func start(){
        
        //Update our navigator for future Coordinators - we can make PopToRoot to this section too
        navigator = newNavigator
        
        //Append child Coordinator for future useful use
        childCoordinators.append(self)
        
        //Get the last VC presented
        AppCoordinator.topViewController()?.present(newNavigator, animated: true, completion: nil)
    }
    
    override func back() {
        childCoordinators.remove(at: childCoordinators.count - 1)
        navigator?.dismiss(animated: true, completion: nil)
    }
    
    func viewController() -> ThirdVC {
        let viewControler = ThirdVC(nibName: nib, bundle: nil)
        viewControler.coordinator = self
        return viewControler
    }
    
    func navigate(){ FourthCoordinator(navigator).start() }
}

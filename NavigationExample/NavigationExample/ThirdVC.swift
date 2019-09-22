//
//  ThirdVC.swift
//  NavigationExample
//
//  Created by Pablo Blanco Peris on 19/09/2019.
//  Copyright © 2019 Pablo Blanco Peris. All rights reserved.
//

import UIKit

class ThirdVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class ThirdCoordinator: Coordinator {
    let nib = "ThirdVC"
    
    func start(){
//        navigator?.show(viewController(), sender: nil)
        navigator?.present(viewController(), animated: true, completion: nil)
    }
    
    func viewController() -> ThirdVC {
        let viewControler = ThirdVC(nibName: nib, bundle: nil)
        return viewControler
    }
    
    func navigate(){
        SecondCoordinator(navigator).start()
    }
}

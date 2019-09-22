//
//  Coordinator.swift
//  NavigationExample
//
//  Created by Pablo Blanco Peris on 19/09/2019.
//  Copyright © 2019 Pablo Blanco Peris. All rights reserved.
//

import Foundation
import UIKit

class Coordinator {
    var childCoordinators: [Coordinator] = []
    weak var navigator: UINavigationController?
    
    init(_ navigator: UINavigationController?) {self.navigator = navigator}
    func back(){navigator?.popViewController(animated: true)}

}

class AppCoordinator: Coordinator {
    
    func start(){
        childCoordinators.append(FirstCoordinator(navigator))
        (childCoordinators.first as? FirstCoordinator)?.start()
    }
    
    func setRootController(){
        //Token logic
        if childCoordinators.count > 0 {childCoordinators.removeAll()}
        if let presented = navigator?.presentedViewController{
            presented.dismiss(animated: false, completion: {
                self.navigator?.viewControllers.removeAll()
                self.start()
            })
        }
        else{
            
        }
    }
}

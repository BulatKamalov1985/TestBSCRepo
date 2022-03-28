//
//  TestAssembly.swift
//  test
//
//  Created by Aleksey Sultanov on 24.03.2022.
//

import UIKit

enum TestAssembly {
    static func build(str: String) -> UIViewController {
        let presenter = TestPresenter()
        let interactor = TestInteractor(
            presenter: presenter,
            str: str
        )
        let viewController = TestViewController(interactor: interactor)

        presenter.viewController = viewController

        return viewController
    }
}

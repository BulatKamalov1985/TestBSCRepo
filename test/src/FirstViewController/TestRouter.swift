//
//  TestRouter.swift
//  test
//
//  Created by Aleksey Sultanov on 24.03.2022.
//

final class TestRouter: TestRoutingLogic {
    private weak var viewController: TestViewController?

    init(
        viewController: TestViewController?
    ) {
        self.viewController = viewController
    }

    // MARK: Routing

     func routeTo() {
     }
}

private extension TestRouter {
    // MARK: Navigation

//    func navigateToSomewhere(
//        source: TestViewController,
//        destination: SomewhereViewController
//    ) {
//        source.show(destination, sender: nil)
//    }

    // MARK: Passing data

//    func passDataToSomewhere(
//        source: TestDataStore,
//        destination: inout SomewhereDataStore
//    ) {
//        destination.name = source.name
//    }
}

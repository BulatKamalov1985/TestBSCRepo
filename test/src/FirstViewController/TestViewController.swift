//
//  TestViewController.swift
//  test
//
//  Created by Aleksey Sultanov on 24.03.2022.
//

import UIKit

final class TestViewController: UIViewController {
    private let interactor: TestBusinessLogic
    private var router: (TestRoutingLogic)!

    init(
        interactor: TestBusinessLogic
    ) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)

        router = TestRouter(viewController: self)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        fetchData()
    }
}

private extension TestViewController {
    func fetchData() {
        interactor.fetch(request: Test.Fetch.Request())
    }
}

extension TestViewController: TestDisplayLogic {
    func display(state: Test.State) {
        switch state {
        case let .error(model):
            displayError(viewModel: model)
        case .loading:
            displayLoading()
        case .displaySomething:
            displaySomething()
        }
    }

    func displayError(viewModel: Test.Error.ViewModel) {
    }

    func displayLoading() {
    }

    func displaySomething() {
        
    }
}

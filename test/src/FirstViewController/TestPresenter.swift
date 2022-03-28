//
//  TestPresenter.swift
//  test
//
//  Created by Aleksey Sultanov on 24.03.2022.
//

import Foundation

final class TestPresenter: TestPresentationLogic {

    weak var viewController: TestDisplayLogic?
    func present(response: Test.Fetch.Response) {
        viewController?.display(state: .displaySomething(.init()))
    }
}

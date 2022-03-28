//
//  TestInteractor.swift
//  test
//
//  Created by Aleksey Sultanov on 24.03.2022.
//

final class TestInteractor: TestBusinessLogic,
TestWorkerLogic {
    private let presenter: TestPresentationLogic
    private let str: String

    init(
        presenter: TestPresentationLogic,
        str: String
    ) {
        self.presenter = presenter
        self.str = str
    }

    func fetch(request: Test.Fetch.Request) {
        get(request)
        
        presenter.present(response: .init())
    }
}

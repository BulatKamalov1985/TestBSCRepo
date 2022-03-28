//
//  TestModels.swift
//  test
//
//  Created by Aleksey Sultanov on 24.03.2022.
//

enum Test {
    enum State {
        case displaySomething(Fetch.ViewModel)
        case error(Error.ViewModel)
        case loading
    }

    enum Error {
        struct Response {
            let message: String
        }
        struct ViewModel {
            let message: String
        }
    }

    enum Fetch {
        struct Request {}
        struct Response {}
        struct ViewModel {}
    }
}

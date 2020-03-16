//
//  MonsterDetailPresenter.swift
//  UhooiPicBook
//
//  Created by uhooi on 04/03/2020.
//  Copyright © 2020 THE Uhooi. All rights reserved.
//

import Foundation
import UIKit.UIImage

protocol MonsterDetailEventHandler: AnyObject {
    func viewDidLoad()
    func didTapDancingImageView(dancingImage: UIImage?)
}

/// @mockable
protocol MonsterDetailInteractorOutput: AnyObject {
}

final class MonsterDetailPresenter {

    // MARK: Type Aliases

    // MARK: Stored Instance Properties

    private unowned let view: MonsterDetailUserInterface
    private let interactor: MonsterDetailInteractorInput
    private let router: MonsterDetailRouterInput

    // MARK: Computed Instance Properties

    // MARK: Initializers

    init(view: MonsterDetailUserInterface, interactor: MonsterDetailInteractorInput, router: MonsterDetailRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    // MARK: Other Private Methods

}

extension MonsterDetailPresenter: MonsterDetailEventHandler {

    func viewDidLoad() {
    }

    func didTapDancingImageView(dancingImage: UIImage?) {
        guard let dancingImage = dancingImage else {
            return
        }
        self.router.popupDancingImage(dancingImage)
    }

}

extension MonsterDetailPresenter: MonsterDetailInteractorOutput {
}

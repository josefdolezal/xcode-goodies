//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import SnapKit
import ReactiveSwift

/// <#Description#>
class ___FILEBASENAMEASIDENTIFIER___: <#UICollectionViewCell#> {

    /// Reuse identifier of cell
    static let identifier = "___FILEBASENAMEASIDENTIFIER___"

    // MARK: Public API

    /// Cell logic
    let viewModel = MutableProperty<___VARIABLE_viewModel___Type?>(nil)

    // MARK: Private properties

    // MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        bindViewModel()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Cell lifecycle

    override func layoutSubviews() {
        super.layoutSubviews()
    }

    // MARK: Internal logic

    /// Binds available view model outputs to view
    private func bindViewModel() {
        let vm = viewModel.producer.skipNil()
    }
}

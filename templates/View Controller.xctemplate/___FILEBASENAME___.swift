//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

/// <#ViewController Docs#>
class ___FILEBASENAMEASIDENTIFIER___: <#UIViewController#> {
    // MARK: - Properties

    /// Controller logic
    fileprivate var viewModel: ___VARIABLE_viewModel___Type!

    // MARK: - Initializers

    convenience init(viewModel: ___VARIABLE_viewModel___Type) {
        self.init()

        self.viewModel = viewModel
        bindViewModel()
    }

    // MARK: - Controller lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Internal logic

    /// Binds outputs of View Model to UI and converts
    /// user interaction to View Model inputs
    private func bindViewModel() {

    }
}

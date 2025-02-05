//
//  FrameworkGridViewModel.swift
//  UI-Apple-Frameworks
//
//  Created by Peyman on 2/5/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
     
    var selectedFramework: Framework?{
        didSet{
            isShowDetailView = true
        }
    }
    @Published var isShowDetailView = false
}

//
//  FrameworkGridViewModel.swift
//  UI-Apple-Frameworks
//
//  Created by Peyman on 2/5/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
     

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}

//
//  FrameworkTitleView.swift
//  UI-Apple-Frameworks
//
//  Created by Peyman on 2/6/25.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    var framework : Framework
    var body: some View {
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .foregroundColor(Color(.label))
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}

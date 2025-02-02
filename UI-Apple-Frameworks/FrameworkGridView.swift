//
//  FrameworkGridView.swift
//  UI-Apple-Frameworks
//
//  Created by Peyman on 2/2/25.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                    }
                    
                }
            }
            .navigationTitle("🍎 Framework")
        }
        
    }
}

#Preview {
    FrameworkGridView()
}

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
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

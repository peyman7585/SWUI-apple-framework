//
//  FrameworkDetailView.swift
//  UI-Apple-Frameworks
//
//  Created by Peyman on 2/5/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework!
    @Binding var isShowDetailView:Bool
    var body: some View {
       
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            Button{
                
            }label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowDetailView: .constant(false)).preferredColorScheme(.dark)
}

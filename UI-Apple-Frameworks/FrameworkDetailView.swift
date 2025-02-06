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
    @State private var isShowingSafariView = false
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
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content:{
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowDetailView: .constant(false)).preferredColorScheme(.dark)
}

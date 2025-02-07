//
//  XDismissButton.swift
//  UI-Apple-Frameworks
//
//  Created by Peyman on 2/6/25.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowDetailView:Bool
    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowDetailView: .constant(false))
}

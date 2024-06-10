//
//  ProfileOptionView.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 10/6/24.
//

import SwiftUI

struct ProfileOptionView: View {
    let imageName : String
    let title : String
    
    var body: some View {
        VStack(){
            HStack(){
                Image(systemName: imageName)
                
                Text(title)
                
                Spacer()
                
                Image(systemName: "chevron.forward")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionView(imageName: "gear", title: "Setting")
}

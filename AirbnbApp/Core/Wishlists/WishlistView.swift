//
//  WishlistView.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 10/6/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack(){
            
            VStack(alignment: .leading , spacing: 32){
                
                VStack(alignment: .leading , spacing: 8){
                    Text("Log in to view your wish lists")
                        .font(.headline)
                    
                    Text("You can create , view or wishlists once you've logged in")
                        .font(.footnote)
                    
                    
                }
                
                Button{
                    
                } label:{
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 320, height: 40)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    
                }
                
                
                Spacer()
                
                
            }
            .padding()
            .navigationTitle("Wishlists")
            
        }
       
    }
}

#Preview {
    WishlistView()
}

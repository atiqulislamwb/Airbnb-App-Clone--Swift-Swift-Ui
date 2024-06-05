//
//  ListingItemView.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 5/6/24.
//

import SwiftUI

struct ListingItemView: View {
    

    var body: some View {
        VStack(spacing: 8){
            //image
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
             
            HStack(alignment: .top){
                VStack(alignment: .leading){
                     Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 2024")
                        .foregroundStyle(.gray)
                    
                    HStack(){
                        Text("$560")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
                
                //rating
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8")
                }
            }
            .font(.footnote)
            
        }
       
    }
}

#Preview {
    ListingItemView()
}

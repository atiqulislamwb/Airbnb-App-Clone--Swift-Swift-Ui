//
//  ListingDetailView.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 5/6/24.
//

import SwiftUI

struct ListingDetailView: View {
 
    var body: some View {
        ScrollView(){
            
            //image
            ListingImageCarouselView()
                .frame(height: 350)
            
            //hotel info
            VStack(alignment: .leading , spacing: 0 ){
                Text("Miami, Villa")
                   .fontWeight(.semibold)
                   .foregroundStyle(.black)
                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                //rating
                VStack(alignment: .leading){
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4.8")
                        Text("-")
                        Text("23 reviews")
                  
                            .underline()
                            .fontWeight(.semibold)
                    }
         
                    Text("Miami, Florida")
                
                }
                .font(.footnote)

            }
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , alignment: .leading)
            
            
            Divider()
            
            //host info view
            HStack(){
                VStack(alignment: .leading , spacing: 0 ){
                    Text("Entrie villa hosted by ")
                       .fontWeight(.semibold)
                       .foregroundStyle(.black)
                       .font(.headline)
                    
                    Text("Jhon Smith ")
                       .fontWeight(.semibold)
                       .foregroundStyle(.black)
                       .font(.headline)
                       .padding(.top , -4)
                     
                    HStack(){
                        Text("4 guest - ")
                        Text("3 bedroom - ")
                        Text("6 beds - ")
                        Text("3 baths - ")
                        
                    }
                    .font(.caption)


                }
               
                Spacer()
                
                //profile photo
                
                Image("profile-pic-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    

                
            }
            .padding()
     
         
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0 ..< 2, id:\.self){ feature in
                    
                    HStack( spacing :12 ){
                        Image(systemName: "medal")
                        
                        VStack(alignment:. leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("superhost are excited , highly rated hosts who are commited to provide grate stars for guest")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.leading)
                    
                }
            }
            .padding(.vertical)
        
            Divider()
            
            
            
            
            
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ListingDetailView()
}

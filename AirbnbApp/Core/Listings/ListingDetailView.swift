//
//  ListingDetailView.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 5/6/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss

    @State private var showAlert = false
       
    
    var body: some View {
        ScrollView( .vertical , showsIndicators: false){
            
            //image
            ZStack(alignment: .topLeading){
                
                ListingImageCarouselView()
                    .frame(height: 350)
                
                Button(action: {
                          dismiss()
                      }) {
                          Image( systemName: "chevron.left") // Replace with your own image name
                              .foregroundStyle(.black)
                              .background(Circle().fill(.white).frame(width: 40 , height:40))
                              .padding(32)
                      }
            }
            
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
                        Text("3 baths")
                        
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
            
            VStack( alignment: .leading, spacing:16){
                Text("Where you sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:16){
                        ForEach (1 ..< 6){bedroom in
                            VStack(){
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                                    .font(.caption)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.gray)
                        }
                    }
                   
                }
                .scrollTargetBehavior(.paging)
                
            }
            .padding()
         
            
            Divider()
            
            VStack(alignment: .leading , spacing : 16 ){
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(0 ..< 5){feature in
                    HStack(){
                        Image(systemName: "wifi")
                        Text("Wifi")
                            .font(.caption)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                }
                
                
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing : 16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                .frame(height:250)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            .padding()
  
            
            
            
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 56)
        .overlay( alignment: .bottom){
            VStack(){
               Divider()
                    .padding(.bottom)
                HStack(){
                    VStack( alignment: .leading){
                         Text("$500")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                        
                        Text("Oct - 15 - 24")
                           .font(.footnote)
                           .fontWeight(.semibold)
                           .underline()
                        
                        
                        
                        
                        
                        
                    }
                    Spacer()
                  
                    Button(action: {
                               showAlert = true
                           }) {
                               Text("Reserved")
                                   .foregroundColor(.white)
                                   .font(.subheadline)
                                   .fontWeight(.semibold)
                                   .frame(width: 140, height: 40)
                                   .background(Color.red)
                                   .clipShape(RoundedRectangle(cornerRadius: 10))
                           }
                           .alert(isPresented: $showAlert) {
                               Alert(title: Text("Reservation"), message: Text("Are you sure you want to reserve?"), primaryButton: .default(Text("Yes")), secondaryButton: .cancel(Text("No")))
                           }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
     
        }
        .background(.white)
       
           
    }
}

#Preview {
    ListingDetailView()
}

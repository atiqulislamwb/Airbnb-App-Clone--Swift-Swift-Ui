//
//  DestinationSearchView.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 9/6/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}


struct DestinationSearchView: View {
    @Binding var show : Bool
    @State private var destination = ""
    @State private var selectedOptions : DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()

    @State private var numGuests = 0
    
    
    
    var body: some View {
        VStack(){
            
            HStack(){
                Button(action: {
                    withAnimation(.snappy){
                        show.toggle()
                    }
                    
                }, label: {
                   Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundColor(.black)
                })
                
                
                Spacer()
                
                Button("Clear"){
                    destination = ""
                    selectedOptions = .location
                    startDate = Date()
                    endDate = Date()
                    numGuests = 0
                }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            .padding()
            
            VStack(alignment: .leading){
                
                if selectedOptions == .location {
                    Text("Where to ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack(){
                    Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destination" , text: $destination)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                }
                }else{
                    CollapsePickerView(title: "where", description: "Add destination")
                }
                
                
          
            }
            .padding()
            .frame(height: selectedOptions == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 5)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOptions = .location
                }
            }
            
            // date selection
            VStack( alignment: .leading){
                if selectedOptions == .dates{
              
                        Text("When's your trip?")
                            .font(.title2)
                            .fontWeight(.semibold)
                    
                    VStack {

                               DatePicker("From", selection: $startDate, displayedComponents: .date)
                            
                               Divider()

                               DatePicker("To", selection: $endDate, displayedComponents: .date)
                              
                           }
                         
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    
                } else {
                    CollapsePickerView(title: "when", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOptions == .dates ? 180 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 5)
           .onTapGesture {
                    withAnimation(.snappy){
                        selectedOptions = .dates
                    }
                }
            
            
            VStack(alignment: .leading){
                if selectedOptions == .guests{
                  
                        Text("When's coming")
                            .font(.title2)
                            .fontWeight(.semibold)
                    
                    Stepper{
                        Text("\(numGuests) Adults ")
                    }onIncrement: {
                      numGuests += 1
                    }onDecrement: {
                        guard numGuests > 0 else {return}
                      numGuests -= 1
                    }
                     
                   
                }else{
                    CollapsePickerView(title: "who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOptions == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 5)
           .onTapGesture {
                    withAnimation(.snappy){
                        selectedOptions = .guests
                    }
                }
            
            
       
   Spacer()
            
            
            
        }
    }
}

#Preview {
    DestinationSearchView(show : .constant(false))
}




struct CollapsePickerView : View {
    let title : String
    let description : String
    var body:some View {
        
        VStack(){
            HStack(){
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
                    .foregroundStyle(.black)
                    .fontWeight(.semibold)
            }
//            .padding()
//            .background(.white)
//            .clipShape(RoundedRectangle(cornerRadius: 12))
//            .padding()
//            .shadow(radius: 5)
        }
    }
}

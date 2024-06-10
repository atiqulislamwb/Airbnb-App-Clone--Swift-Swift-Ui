//
//  listingModel.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 10/6/24.
//

import Foundation


struct listingModel: Identifiable, Codable {
    let id: String
    let ownerUid : String
    let ownerName: String
    let ownerImageurl : String
    let numberOfBedrooms : Int
    let numberofbathrooms : Int
    let numberOfGuests : Int
    let numberOfbeds: Int
    let pricePerNight: Int
    let latitude : Double
    let longtitude : Double
    let address : String
    let city: String
    let state: String
    let title: String
    let rating : Double
}



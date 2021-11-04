//
//  Quote.swift
//  IOSQuoteList
//
//  Created by Jiwon_Hae on 2021/11/05.
//

import Foundation

struct Author : Identifiable, Decodable {
    var id : UUID?
    var name : String
    var quotes : [String]
    var image : String
}

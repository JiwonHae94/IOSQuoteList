//
//  QuoteViewModel.swift
//  IOSQuoteList
//
//  Created by Jiwon_Hae on 2021/11/05.
//

import Foundation
import SwiftUI

class AuthorViewModel : ObservableObject{
    
    @Published var authors = [Author]()
    
    init(){
        var data:[Author] = LocalDataService.loadData(path: Bundle.main.path(forResource: "data", ofType: "json"))
        
        for index in 0..<data.count{
            data[index].id = UUID()
            authors.append(data[index])
        }
    }
    
}

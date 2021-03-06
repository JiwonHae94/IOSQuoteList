//
//  LocalDataService.swift
//  IOSQuoteList
//
//  Created by Jiwon_Hae on 2021/11/05.
//

import Foundation

class LocalDataService{
    
    static func loadData<T : Decodable>(path : String?) -> [T]{
        guard path != nil else{
            return [T]()
        }
        
        let url = URL(fileURLWithPath: path!)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode([T].self, from:data)
        }catch{
            print(error)
        }
        
        return [T]()
    }

}

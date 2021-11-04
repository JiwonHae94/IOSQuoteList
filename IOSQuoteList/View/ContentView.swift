//
//  ContentView.swift
//  IOSQuoteList
//
//  Created by Jiwon_Hae on 2021/11/05.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var authorViewModel = AuthorViewModel()
    
    var body: some View {
        NavigationView{
            List(authorViewModel.authors) { author in
                ScrollView{
                    // VStack to group all the cards
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // Card for each author
                        ForEach(authorViewModel.authors) { a in
                            
                            // Link to detail view
                            NavigationLink(
                                destination: DetailView(author: a),
                                label: {
                                    
                                    // Each author card in the scrollview
                                    Card(author: a)
                                })
                            
                            
                            
                        }
                    }
                }
            }
            .navigationTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

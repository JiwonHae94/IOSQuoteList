//
//  QuoteDetailView.swift
//  IOSQuoteList
//
//  Created by Jiwon_Hae on 2021/11/05.
//

import SwiftUI

struct DetailView: View {
    var author : Author
    
    var body: some View {
        ScrollView{
            VStack{
                Text(author.image)
                    .padding([.bottom, .top], 5)
                    .font(.title2)
                Divider()
                ForEach(0..<author.quotes.count, id: \.self){ pos in
                    Text(author.quotes[pos])
                        .font(.body)
                        .padding([.bottom, .top], 5)
                }
            }
            
            .navigationBarTitle(author.name)
        }
        
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let authViewModel = AuthorViewModel()
        DetailView(author: authViewModel.authors[0])
    }
}

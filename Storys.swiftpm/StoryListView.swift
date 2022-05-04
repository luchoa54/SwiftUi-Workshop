//
//  StoryListView.swift
//  Storys
//
//  Created by Luciano Uchoa on 04/05/22.
//

//
//  SwiftUIView.swift
//
//
//  Created by Luciano Uchoa on 20/04/22.
//

import SwiftUI

struct StoryListView: View {
    
    var storys: [Story] = StoryList.book
    
    var body: some View {
        NavigationView{
            List(storys, id: \.id){ item in
                NavigationLink(destination: StoryDetailView(story: item), label: {
                    Image(item.heroPicture)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .cornerRadius(4)
                        .padding(.vertical, 4)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(item.name)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                
                    }
                })
            }
            .navigationTitle("Estruturas de Histórias\n\n")
            .listStyle(GroupedListStyle())
        }
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}

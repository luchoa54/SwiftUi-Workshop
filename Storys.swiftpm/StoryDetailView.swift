//
//  StoryDetailView.swift
//  Storys
//
//  Created by Luciano Uchoa on 04/05/22.
//

import SwiftUI

struct StoryDetailView: View {
    var story: Story
    
    var body: some View {
        VStack (spacing: 20){
            ScrollView{
                Image(story.heroPicture)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 550)
                    .cornerRadius(12)
            
                Text(story.title)
                    .font(.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            
                Text(story.description)
                    .font(.title2)
                    .padding()
            }
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(story: StoryList.book.first!)
    }
}

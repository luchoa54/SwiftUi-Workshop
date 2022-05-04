
import SwiftUI

@main
struct MyApp: App {

    var itens : [Story] = StoryList.book
    
    var body: some Scene {
        WindowGroup {
            TabView {
                StoryListView()
                    .tabItem {
                        Image(systemName: "book.circle.fill")
                        Text("Histórias")
                    }
            }
            .accentColor(.purple)
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

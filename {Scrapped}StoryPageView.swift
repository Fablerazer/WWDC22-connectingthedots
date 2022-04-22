import SwiftUI

struct StoryPageView: View {
    
        let story: Story
        let pageIndex: Int
        
        // MARK: - View Methods
        var body: some View {
            VStack {
                ScrollView {
                    Text("My Story")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
                    Text(story[pageIndex].text)
                    // MARK: - Choices Methods
                }
                ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                    NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                        
                        Text(choice.text)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.gray.opacity(0.25))
                            .cornerRadius(8)
                    }
                }
            }
        // MARK: - Navigation Titles
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NonlinearStory_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

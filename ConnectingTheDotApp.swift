import SwiftUI

@main
struct StoryApp: App {
//    @ObservedObject var appState = AppState()
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}

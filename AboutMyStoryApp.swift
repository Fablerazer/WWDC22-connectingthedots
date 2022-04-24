import SwiftUI

@main
struct StoryApp: App {
    @ObservedObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            IntroConnectingLine()
                .environmentObject(appState)
        }
    }
}

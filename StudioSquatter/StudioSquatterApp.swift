//
//  StudioSquatterApp.swift
//  StudioSquatter
//
//  Created by Cody Mullis on 4/18/24.
//

import SwiftUI

@main
struct StudioSquatterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandGroup(replacing: .appInfo) {
                Button("About Studio Anti-Squatter") {
                    NSApplication.shared.orderFrontStandardAboutPanel(
                        options: [
                            NSApplication.AboutPanelOptionKey.credits: NSAttributedString(
                                string: "Created for Level Up - MCPL - Cody Mullis",
                                attributes: [
                                    NSAttributedString.Key.font: NSFont.boldSystemFont(
                                        ofSize: NSFont.smallSystemFontSize)
                                ]
                            ),
                            NSApplication.AboutPanelOptionKey(
                                rawValue: "Copyright"
                            ): "2024 - May the Force be with you"
                        ]
                    )
                }
            }
        }
    }
}

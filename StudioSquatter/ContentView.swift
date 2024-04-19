//
//  ContentView.swift
//  StudioSquatter
//
//  Created by Cody Mullis on 4/18/24.
//

import SwiftUI

struct Audio1 {
}

struct ContentView: View {
    @State private var strWarn1: String = ""
    var body: some View {
        Grid {
            GridRow {
                Image(systemName: "exclamationmark.bubble.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Warning \n Message")
                    .multilineTextAlignment(.center)
                TextField("Send Message", text: $strWarn1, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3...3)
                    .frame(height: 50)
                    .overlay {TextEditor(text: $strWarn1)
                    }
            }
            .padding([.top, .trailing, .leading], 5)
            GridRow {
            }
                .padding([.bottom, .trailing, .leading], 20)
        }
    }
}

#Preview {
    ContentView()
        .frame(minWidth: 350, minHeight: 350)
}

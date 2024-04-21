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
                Button("Send", systemImage: ("paperplane.circle.fill"), action: {
                    message1()
                })
            }
            .padding([.top, .trailing, .leading], 5)
            
            GridRow {
                Button(action: boot1) {
                    Image(systemName:"figure.kickboxing")
                        .foregroundColor(.red)
                    Text("Boot")
                        .foregroundColor(.red)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .padding([.bottom, .trailing, .leading], 20)
                .controlSize(.large)
                .frame(alignment: .center)
            }
        }
    }
    
    func message1(){
        let arg = ["root@10.10.12.43", "osascript -e 'tell app \"System Events\" to display dialog \"" + strWarn1 + "\"'", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        //task.waitUntilExit()
        strWarn1 = ""
        
    }
    
    func boot1(){
        let arg = ["root@10.10.12.43", "shutdown -h NOW", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        
    }
}



#Preview {
    ContentView()
        .frame(minWidth: 350, minHeight: 350)
}


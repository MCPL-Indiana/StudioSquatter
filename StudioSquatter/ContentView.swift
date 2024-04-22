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
    @State private var strAudio1: String = "10.10.25.68"
    @State private var strAudio2: String = "10.10.25.67"
    @State private var strWarn1: String = ""
    @State private var strWarn2: String = ""
    var body: some View {
        VStack {
            Text("Audio Studio 1")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            HStack {
                Image(systemName: "message.fill")
                    .imageScale(.large)
                    .foregroundColor(.green)
                Text("Send \n Message")
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
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .controlSize(.extraLarge)
            }
            .padding([.top, .trailing, .leading], 25)
            
            HStack {
                Spacer()
                
                Button(action: warn1A) {
                    Image(systemName:"15.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .controlSize(.extraLarge)
                    Text("Warning")
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .controlSize(.extraLarge)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .frame(alignment: .center)
                Spacer()
                Button(action: warn1B) {
                    Image(systemName:"5.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .controlSize(.extraLarge)
                    Text("Warning")
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .controlSize(.extraLarge)
                .buttonStyle(.borderedProminent)
                .tint(.yellow)
                .frame(alignment: .center)
                Spacer()
                Button(action: boot1) {
                    Image(systemName:"figure.kickboxing")
                        .foregroundColor(.white)
                    Text("Boot")
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .controlSize(.extraLarge)
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .frame(alignment: .center)
                Spacer()
            }
            .padding([.top, .trailing, .leading, .bottom], 25)
            Divider()
            Text("Audio Studio 2")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            HStack {
                Image(systemName: "message.fill")
                    .imageScale(.large)
                    .foregroundColor(.green)
                Text("Send \n Message")
                    .multilineTextAlignment(.center)
                TextField("Send Message", text: $strWarn2, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3...3)
                    .frame(height: 50)
                    .overlay {TextEditor(text: $strWarn2)
                    }
                Button("Send", systemImage: ("paperplane.circle.fill"), action: {
                    message2()
                })
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .controlSize(.extraLarge)
            }
            .padding([.top, .trailing, .leading], 25)
            
            HStack {
                Spacer()
                
                Button(action: warn2A) {
                    Image(systemName:"15.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .controlSize(.extraLarge)
                    Text("Warning")
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .controlSize(.extraLarge)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .frame(alignment: .center)
                Spacer()
                Button(action: warn2B) {
                    Image(systemName:"5.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .controlSize(.extraLarge)
                    Text("Warning")
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .controlSize(.extraLarge)
                .buttonStyle(.borderedProminent)
                .tint(.yellow)
                .frame(alignment: .center)
                Spacer()
                Button(action: boot2) {
                    Image(systemName:"figure.kickboxing")
                        .foregroundColor(.white)
                    Text("Boot")
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .controlSize(.extraLarge)
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .frame(alignment: .center)
                Spacer()
            }
            .padding([.top, .bottom, .trailing, .leading], 25)
            
        }
        .frame(minWidth: 350, minHeight: 450)
    }
    
    func message1(){
        let arg = ["a_usermac@" + strAudio1, "osascript -e 'tell app \"System Events\" to display dialog \"" + strWarn1 + "\"'", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        //task.waitUntilExit()
        strWarn1 = ""
        
    }
    
    func warn1A(){
        let arg = ["a_usermac@" + strAudio1, "osascript -e 'tell app \"System Events\" to display dialog \"You have 15 minutes left in your studio session\"'", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        //task.waitUntilExit()
        
    }
    
    func warn1B(){
        let arg = ["a_usermac@" + strAudio1, "osascript -e 'tell app \"System Events\" to display dialog \"You have 5 minutes left in your studio session. \n Please save your work now.\"'", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        //task.waitUntilExit()
        
    }
    
    func boot1(){
        let arg = ["root@" + strAudio1, "shutdown -h NOW", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        
    }
    
    
    func message2(){
        let arg = ["a_usermac@" + strAudio2, "osascript -e 'tell app \"System Events\" to display dialog \"" + strWarn2 + "\"'", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        //task.waitUntilExit()
        strWarn2 = ""
        
    }
    
    func warn2A(){
        let arg = ["a_usermac@" + strAudio2, "osascript -e 'tell app \"System Events\" to display dialog \"You have 15 minutes left in your studio session\"'", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        //task.waitUntilExit()
        
    }
    
    func warn2B(){
        let arg = ["a_usermac@" + strAudio2, "osascript -e 'tell app \"System Events\" to display dialog \"You have 5 minutes left in your studio session. \n Please save your work now.\"'", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        //task.waitUntilExit()
        
    }
    
    func boot2(){
        let arg = ["root@" + strAudio2, "shutdown -h NOW", "exit"]
        let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = arg
        task.launch()
        
    }
}

#Preview {
    ContentView()
        .frame(minWidth: 350, minHeight: 450)
}


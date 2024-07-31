//
//  ContentView.swift
//  Group 2
//
//  Created by Marina Foko on 7/26/24.
//
import SwiftUI
var name1 = ""
struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name"
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Text("Aim Active")
                    .font(.system(size: 36))
                    .italic()
                    .padding(.top, 18) // Add padding from the top to position the text
                Text("Home").font(.system(size: 30)).padding(.top, 18)
                Text("     Balance your healthy lifestyle with personalized workout routines set for your fitness goals!").italic().padding(.top, 5)
                NavigationLink(destination: ContentView()) {
                        Text("Home")
                }.padding(.top, 5)
                NavigationLink(destination: cause()) {
                        Text("Our Cause")
                }.padding(.top, 5)
                NavigationLink(destination: fitnessGoals()) {
                        Text("Fitness Goals")
                      }.padding(.top, 5)
                NavigationLink(destination: fitnessPlan()) {
                        Text("My Fitness Plan")
                      }.padding(.top, 5)
                VStack{
                    Text(textTitle)
                    TextField("", text: $name).multilineTextAlignment(.center).font(.title).border(Color.black, width: 1)
                    Button("Submit Name"){
                        textTitle = "Welcome, \(name)"
                        name1 = name
                        
                    }.font(.title2).buttonStyle(.borderedProminent).tint(.purple)
                    
                   
                }.padding(.top, 20)
                
                Spacer() // Add a spacer to ensure buttons stay at the bottom               Spacer() // Add a spacer to push the content to the bottom
                
                Text("")
                
                Spacer() // Add a spacer to ensure buttons stay at the bottom
              
                    
                    
            }
            .padding() // Add padding around the VStack for better layout
        }
    }
}

#Preview {
    ContentView()
}


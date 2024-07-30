//
//  fitnessGoals.swift
//  Group 2
//
//  Created by Marina Foko on 7/30/24.
//

import SwiftUI

struct fitnessGoals: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Text("Aim Active")
                    .font(.system(size: 36))
                    .italic()
                    .padding(.top, 18) // Add padding from the top to position the text
                Text("Fitness Goals").font(.system(size: 30)).padding(.top, 18)
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
                
                Button("shoulder") {
                  //  shoulderWorkout()
                }
                Button("leg") {
                   // legWorkout()
                }
                Button("triceps") {
                   // tricepWorkout()
                }
                Button("biceps") {
                  //  bicepWorkout()
                }
                Button("chest") {
                  //  chestWorkout()
                }
                Button("back") {
                  //  backWorkout()
                }
                Button("glutes") {
                  //  glutesWorkout()
                }
                Button("core") {
                   // coreWorkout()
                }
                Spacer() // Add a spacer to ensure buttons stay at the bottom               Spacer() // Add a spacer to push the content to the bottom
                
                Text("")
                
                Spacer()
            }
        }
    }
}

#Preview {
    fitnessGoals()
}

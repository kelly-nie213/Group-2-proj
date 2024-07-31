//
//  fitnessPlan.swift
//  Group 2
//
//  Created by Marina Foko on 7/30/24.
//

import SwiftUI

struct fitnessPlan: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Text("Aim Active")
                    .font(.system(size: 36))
                    .italic()
                    .padding(.top, 18) // Add padding from the top to position the text
                Text("My Fitness Plan").font(.system(size: 30)).padding(.top, 18)
                Text("Hard work always pays off! Here is your personalized workout routine.").italic().padding(.top, 5)
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
            }
            Text("\(name1)'s Workout Routine")
            Text(workoutRoutine)
            Spacer() // Add a spacer to ensure buttons stay at the bottom               Spacer() // Add a spacer to push the content to the bottom
            
            Text("")
            
            Spacer()
        }
        

    }
}
#Preview {
    fitnessPlan()
}

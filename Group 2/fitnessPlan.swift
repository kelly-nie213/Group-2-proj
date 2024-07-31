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
                    .padding(.top, 15)
                    .bold()
                Text("My Fitness Plan").font(.system(size: 30)).padding(.top, 15)
                Text("   Hard work always pays off! Here is your personalized workout routine.").italic().padding(.top, 5).font(.system(size: 15))
                NavigationLink(destination: ContentView()) {
                    Text("Home")
                }
                .padding(.top, 5)
                .background(Color(hex: "#FAD6EE"))
                .font(.system(size: 30))
                .accentColor(.pink)
                
                NavigationLink(destination: cause()) {
                    Text("Our Cause")
                }
                .padding(.top, 5)
                .background(Color(hex: "#FAD6EE"))
                .font(.system(size: 30))
                .accentColor(.pink)
                NavigationLink(destination: fitnessGoals()) {
                    Text("Fitness Goals")
                }
                .padding(.top, 5)
                .background(Color(hex: "#FAD6EE"))
                .font(.system(size: 30))
                .accentColor(.pink)
                NavigationLink(destination: fitnessPlan()) {
                    Text("My Fitness Plan")
                }
                .padding(.top, 5)
                .background(Color(hex: "#FAD6EE"))
                .font(.system(size: 30))
                .accentColor(.pink)
            }
            Text("\(name1)'s Workout Routine").padding(.top, 5).font(.system(size: 25))
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

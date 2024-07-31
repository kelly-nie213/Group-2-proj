//
//  cause.swift
//  Group 2
//
//  Created by Marina Foko on 7/30/24.
//

import SwiftUI

struct cause: View {
    var body: some View {
        NavigationStack {
            ZStack{
                VStack(alignment: .center) {
                    Text("Aim Active")
                        .font(.system(size: 36))
                        .italic()
                        .padding(.top, 18)
                        .bold()
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
            }
        }
            Text("Our Cause").padding(.top,10).font(.system(size: 30))
            Text("   Want to be active, but unsure of which exercises fit your needs? Health Harmony is the app for you! Workout/Exercise information often isn’t very accessible. Some people run into the problem of having goals to be healthier, but not knowing where/how to start. Workout information is often scattered across the internet and locked behind paywalls. Health Harmony aims to solve this problem by offering free, accessible information on exercise in a centralized place.").padding(5).font(.system(size: 20))
            
            Spacer()
            Text("")
            Spacer()

    }
}

#Preview {
    cause()
}

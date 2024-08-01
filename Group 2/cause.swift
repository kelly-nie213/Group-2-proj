//
//  cause.swift
//  Group 2
//
//  Created by Marina Foko on 7/30/24.
//

import SwiftUI

struct cause: View {
    var body: some View {
        VStack{
            NavigationStack {
                    VStack(alignment: .center) {
                        Text("Aim Active")
                            .font(.system(size: 36))
                            .italic()
                            .padding(.top, 18)
                            .bold()
                        NavigationLink(destination: ContentView()) {
                            Text("  Home     ")
                        }
                        .padding(.top, 5)
                        .background(Color(hex: "#FAD6EE"))
                        .font(.system(size: 30))
                        .accentColor(.pink)
                        .cornerRadius(75)
                        NavigationLink(destination: cause()) {
                            Text("  Our Cause     ")
                        }
                        .padding(.top, 5)
                        .background(Color(hex: "#FAD6EE"))
                        .font(.system(size: 30))
                        .accentColor(.pink)
                        .cornerRadius(75)
                        NavigationLink(destination: fitnessGoals()) {
                            Text("  Fitness Goals     ")
                        }
                        .padding(.top, 5)
                        .background(Color(hex: "#FAD6EE"))
                        .font(.system(size: 30))
                        .accentColor(.pink)
                        .cornerRadius(75)
                        NavigationLink(destination: fitnessPlan()) {
                            Text("  My Fitness Plan     ")
                        }
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .background(Color(hex: "#FAD6EE"))
                        .font(.system(size: 30))
                        .accentColor(.pink)
                        .cornerRadius(75)
                        Text("Our Cause")
                            .font(.system(size: 25))
                            .padding(.top, 75)
                        Text("     Want to be active, but unsure of which exercises fit your needs? Aim Active is the app for you! Workout/Exercise information often isn’t very accessible. Some people run into the problem of having goals to be healthier, but not knowing where/how to start. Workout information is often scattered across the internet and locked behind paywalls. Aim Active works to solve this problem by offering free, accessible information on exercise in a centralized place.")
                            .padding(.leading, 15)
                            .padding(.trailing, 15)
                        
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    .ignoresSafeArea()
                    .background(Color(hex: "#d1aebeff"))
                }
            }
        }
    }

#Preview {
    cause()
}

//
//  fitnessGoals.swift
//  Group 2
//
//  Created by Marina Foko on 7/30/24.
//

import SwiftUI
var workoutRoutine = ""
struct fitnessGoals: View {
    func shoulderWorkout() {
       workoutRoutine = "1. Arm Circles - 2 minutes (1 minute forward, 1 minute backward)\n 2. Resistance Band Shoulder Press - 2 sets of 15 reps\n Overhead Shoulder Press - 4 sets of 8 reps\n3. Lateral Raises - 4 sets of 12 reps\n 4. Front Raises - 3 sets of 14 reps \n 5. Arnold Press - 3 sets of 12 reps"
    }
    func legWorkout() {
      workoutRoutine = "1. Jogging - 15 to 20 mins \n 2. Deadlifts - 4 sets of 6 reps \n 3. Lunges - 3 sets of 12 reps \n 4. Leg Press - 3 sets of 15 reps"
    }
    func tricepWorkout() {
      workoutRoutine = "1. Close-Grip Bench Press - 4 sets of 10 reps \n 2. Tricep Dips - 3 sets of 10 reps \n 3. Overhead Tricep Extension - 3 sets of 15 reps \n 4. Tricep Pushdowns - 3 sets of 12 reps \n 5. Skull Crushers (Lying Tricep Extensions) - 3 sets of 15 reps"
    }
    func bicepWorkout() {
      workoutRoutine = "1. Barbell Curls - 4 sets of 12 reps \n 2. Dumbbell Hammer Curls - 3 sets of 12 reps \n 3. Incline Dumbbell Curls - 3 sets of 10 reps"
    }
    func chestWorkout() {
      workoutRoutine = "1. Chest Dips - 3 sets of 12 reps \n 2. Cable Crossovers - 3 sets of 15 reps \n 3. Push-Ups - 3 sets of 20 reps"
    }
    func backWorkout() {
      workoutRoutine = "1. Deadlifts - 4 sets of 6 reps \n 2. Pull-Ups - 4 sets of 12 reps \n 3. Bent-Over Barbell Rows - 4 sets of 12 reps"
    }
    func glutesWorkout() {
      workoutRoutine = "1. Squats - 4 sets of 8 reps \n 2. Cable Kickbacks - 3 sets of 15 per leg \n 3. Glute Bridges - 3 sets of 12 reps"
    }
    func coreWorkout() {
      workoutRoutine = "1. Planks - 3 sets of 45 seconds \n 2. Russian Twists - 3 sets of 15 reps per side \n 3. Bicycle Crunches - 3 sets of 20 reps per side \n 4. Hanging Leg Raises - 3 sets of 15 reps \n 5. Toe Touches - 3 sets of 20 reps"
    }
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
                
                
                Text("\n\n\n\n\n\n")
                
                Button("shoulder") {
                   shoulderWorkout()
                }
                Button("leg") {
                    legWorkout()
                }
                Button("triceps") {
                   tricepWorkout()
                }
                Button("biceps") {
                   bicepWorkout()
                }
                Button("chest") {
                   chestWorkout()
                }
                Button("back") {
                   backWorkout()
                }
                Button("glutes") {
                   glutesWorkout()
                }
                Button("core") {
                   coreWorkout()
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

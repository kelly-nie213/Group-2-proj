//
//  ContentView.swift
//  Group 2
//
//  Created by Marina Foko on 7/26/24.
//
import SwiftUI
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
var name1 = ""
struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(alignment: .center) {
                    Text("Aim Active")
                        .font(.system(size: 36))
                        .italic()
                        .bold()
                    Text("Home")
                        .font(.system(size: 30))
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                        
                    Text("Balance your healthy lifestyle with personalized workout routines set for your fitness goals!")
                        .italic()
                        .padding(.top, 5)
                    VStack {
                        Text(textTitle).font(.system(size: 30))
                        TextField("", text: $name)
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .border(Color.black, width: 1)
                        Button("Submit Name") {
                            textTitle = "Welcome, \(name)"
                            name1 = name
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(.purple)
                        .padding(.bottom,50)
                        
                    }
                    .padding(.top, 20)
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
                    .background(Color(hex: "#FAD6EE"))
                    .font(.system(size: 30))
                    .accentColor(.pink)
                    .cornerRadius(75)
                }
                Spacer()
                Text("")
                Spacer()
            }
            .padding()
            .ignoresSafeArea()
            .background(Color(hex: "#d1aebeff"))

            
        }
    }
}
#Preview {
    ContentView()
}

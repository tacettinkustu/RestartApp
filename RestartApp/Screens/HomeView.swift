//
//  HomeView.swift
//  RestartApp
//
//  Created by Tacettin Küstü on 26.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
            VStack(spacing: 20, content: {
                
                Spacer()
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("The time that leads to mastery is depend on the intensity of our focus.")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Button {
                    isOnboardingViewActive = true
                } label: {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    
                    Text("Restart")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                } //: Button
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            }) //: VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  OnboardingView.swift
//  RestartApp
//
//  Created by Tacettin Küstü on 26.05.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding...")
                .font(.largeTitle)
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        }
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

//
//  SettingsView.swift
//  counter
//
//  Created by Maya McPartland on 9/24/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var maxCount: Int
    var body: some View {
        Stepper("Max Count: \(maxCount)", value: $maxCount).padding()
        .background(Color.white, in: .rect(cornerRadius: 20)).foregroundStyle(.black).font(.title).padding()
    }
}

#Preview {
    SettingsView(maxCount: .constant(5))
}

//
//  counterView.swift
//  counter
//
//  Created by Maya McPartland on 9/24/24.
//

import SwiftUI

struct counterView: View {
    @State private var count = 0
    @State private var maxCount = 0
    var percentFull: Double {
        Double(count) / Double(maxCount)
    }
    var body: some View {
        NavigationStack {
            ZStack() {
                Color.green.ignoresSafeArea()
                Color.red.ignoresSafeArea().opacity(percentFull)
                VStack() {
                    HStack() {
                        Text("\(count) People")
                        Spacer()
                        NavigationLink {
                            SettingsView(maxCount: $maxCount)
                        } label: {
                            Image(systemName: "gear")
                        }.buttonStyle(.plain)
                    }
                    .padding(.horizontal, 20).font(.system(size: 45))
                    Spacer()
                    HStack() {
                        Button {
                            if (count != 0) {
                                count -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                        }
                        Spacer()
                        Button {
                            if (count < maxCount) {
                                count += 1
                            }
                        } label: {
                            Image(systemName: "plus")
                        }
                    }.padding(.horizontal, 60).font(.system(size: 70))
                }.foregroundStyle(.white).padding(.vertical, 20)
            }
        }
    }
}


#Preview {
    counterView()
}

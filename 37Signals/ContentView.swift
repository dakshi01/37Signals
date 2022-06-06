//
//  ContentView.swift
//  37Signals
//
//  Created by Dakshi Khatri on 06/06/22.
//

import SwiftUI

struct ContentView: View {
    var signals: [Signals] = []
    
    var body: some View {
        NavigationView {
        List(signals) { signals in
            NavigationLink(destination: SignalDetail(signals: signals)) {
                HStack {
                    Text("\(signals.number)")
                        .foregroundColor(.secondary)
                    Text(signals.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                }
            }
        }
        .navigationTitle(Text("37 Signals"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(signals: testData)
    }
}
}

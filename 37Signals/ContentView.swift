//
//  ContentView.swift
//  37Signals
//
//  Created by Dakshi Khatri on 06/06/22.
//

import SwiftUI

struct SignalRowView: View {
    var signals: Signals
    
    var body: some View {
        VStack (alignment: .leading, spacing:3){
            Text(signals.name)
                .foregroundColor(.primary)
                .font(.headline)
        }
        .navigationTitle(Text("37 Signals"))
    }
    
}

struct ContentView: View {
    var body: some View {
        List{
            ForEach (besignal){ Signals in
                SignalRowView(signals: Signals)
            }
            
    }
}
}

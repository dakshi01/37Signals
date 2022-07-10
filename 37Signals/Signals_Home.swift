//
//  Signals_Home.swift
//  37Signals
//
//  Created by Dakshi Khatri on 10/07/22.
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
    }
}

struct ContentView: View {
     var body: some View {
        NavigationView{
            List{
            ForEach (besignal){ Signals in
                NavigationLink(destination: SignalDetail(signals: Signals)){
                    SignalRowView(signals: Signals)
            }
    }
}
            .navigationBarTitle(Text("37 Signals"))
}
}
}

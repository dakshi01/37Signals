//
//  SignalDetail.swift
//  37Signals
//
//  Created by Dakshi Khatri on 06/06/22.
//

import SwiftUI

struct SignalDetail: View {
    let signals: Signals
    var body: some View {
            Text(signals.signal)
                .font(.headline)
                .padding()
                .navigationTitle(Text(signals.name))
                    .navigationBarTitleDisplayMode(.inline)
                    
        }
    }

struct SignalDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { SignalDetail(signals: testData[0]) }
    }
}

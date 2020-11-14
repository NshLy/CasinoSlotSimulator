//
//  Reel.swift
//  CasinoSlot
//
//  Created by Артур on 11.11.2020.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Color(#colorLiteral(red: 0.2530259788, green: 0.1106478646, blue: 0.07291140407, alpha: 1))
            .frame(minWidth: 70, idealWidth: 100, maxWidth: 110, minHeight: 65, idealHeight: 95, maxHeight: 100, alignment: .center)
    }
}

struct ReelView_Previews: PreviewProvider {
    static var previews: some View {
        ReelView()
            .previewLayout(.fixed(width: 110, height: 110))
    }
}

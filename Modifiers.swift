//
//  Modifiers.swift
//  CasinoSlot
//
//  Created by Артур on 11.11.2020.
//

import SwiftUI

struct ImageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(minWidth: 70, idealWidth: 100, maxWidth: 110, minHeight: 65, idealHeight: 95, maxHeight: 100, alignment: .center)
            
    }
}

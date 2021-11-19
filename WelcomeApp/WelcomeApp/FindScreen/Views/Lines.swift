//
//  Lines.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct Lines: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to:CGPoint(x: 0, y: rect.midY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.midY), control: CGPoint(x: rect.midX, y: 350))
        
        return path
        
    }
    
 
}

struct Lines_Previews: PreviewProvider {
    static var previews: some View {
        Lines()
    }
}

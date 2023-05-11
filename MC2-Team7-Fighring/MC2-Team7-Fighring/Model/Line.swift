//
//  Line.swift
//  MC2-Team7-Fighring
//
//  Created by 정승균 on 2023/05/11.
//

import Foundation
import SwiftUI

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

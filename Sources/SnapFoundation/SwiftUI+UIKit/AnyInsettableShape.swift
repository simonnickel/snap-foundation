//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

/// A type-erased `InsettableShape` wrapper.
///
/// TODO FB19669133: Does crash when using it with `ContainerRelativeShape()` for `.containerShape()`: `.containerShape(AnyInsettableShape(ContainerRelativeShape()))`.
public struct AnyInsettableShape: InsettableShape {
    
    let shape: any InsettableShape
    
    public init(_ shape: any InsettableShape) {
        self.shape = shape
    }
    
    public func inset(by amount: CGFloat) -> some InsettableShape {
        AnyInsettableShape(shape.inset(by: amount))
    }
    
    public func path(in rect: CGRect) -> Path {
        shape.path(in: rect)
    }
    
}


// MARK: - Preview

#Preview {
    VStack {
        
        // Using `AnyInsettableShape` as View does work.
        AnyInsettableShape(Rectangle())
        AnyInsettableShape(ContainerRelativeShape())
        
        VStack {
            Text("Content")
        }
        .frame(maxWidth: .infinity)
        .background(.yellow)
        // TODO FB19669133: Using `AnyInsettableShape` with ContainerRelativeShape() for .containerShape crashes.
        //        .containerShape(AnyInsettableShape(ContainerRelativeShape()))
        .containerShape(ContainerRelativeShape())
    }
    .frame(width: 200, height: 200)
    .background(.orange)
    // Using `AnyInsettableShape` for .containerShape() does work.
    .containerShape(AnyInsettableShape(RoundedRectangle(cornerRadius: 40)))
}

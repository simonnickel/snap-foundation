//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

//    .modifier(ForEachRecursiveModifier(elements: Style.Element.ElementType.allCases) { content, element in
//        AnyView(
//            content
//                .styleSetup(font: component.fonts?(element), for: element)
//        )
//    })

private struct ForEachRecursiveModifier<CollectionType: Collection, Result: View>: ViewModifier {

    let elements: CollectionType
    let modify: (any View, CollectionType.Element) -> Result

    func body(content: Content) -> some View {
        if let element = elements.first {

            if let leftovers = Array(elements.dropFirst()) as? CollectionType  {
                modify(content, element)
                    .modifier(ForEachRecursiveModifier(elements: leftovers, modify: modify))
            } else {
                modify(content, element)
            }
        } else {
            content
        }
    }

}

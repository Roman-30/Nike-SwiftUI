import SwiftUI

struct ShopItem: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}

enum Category: String, CaseIterable {
       case men = "Men"
       case women = "Women"
       case kids = "Kids"
   }

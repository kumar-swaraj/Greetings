import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        DataItemModel(
            text: "Hello there!",
            color: Color("myGreen")
        ),.init(
            text: "Welcome to the Swift Programming",
            color: Color("myGray")
        ), .init(
            text:  "Are you ready to,",
            color: Color("myYellow")
        ), .init(
            text: "Start exploring?",
            color: Color("myRed")
        ), .init(
            text: "Boom.",
            color: .myPurple
        )
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}

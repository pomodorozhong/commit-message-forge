import SwiftUI

struct BodyTextEditorView: View {
  @State var bodyMessage: String = ""

  var body: some View {
    VStack {
      HStack {
        Text("body")
        Spacer()
      }
      ZStack {
        Text(bodyMessage + "\n\n")
          .opacity(0).padding(.all, 8)

        TextEditor(text: $bodyMessage)
//          .colorMultiply(Color(.init(gray: 0.85, alpha: 1)))
//          .cornerRadius(10)
      }
    }
  }
}

struct BodyTextEditorView_Previews: PreviewProvider {
  static var previews: some View {
    BodyTextEditorView()
      .previewLayout(.fixed(width: 300, height: 70))
  }
}

import SwiftUI

struct SubjectTextFeildView: View {
  @State var subject: String = ""

  var body: some View {
    VStack {
      HStack {
        Text("subject")
        Spacer()
      }
      TextField("<subject>", text: $subject)
    }
  }
}

struct SubjectTextFeildView_Previews: PreviewProvider {
  static var previews: some View {
    ScopeTextFeildView()
      .previewLayout(.fixed(width: 300, height: 70))
  }
}

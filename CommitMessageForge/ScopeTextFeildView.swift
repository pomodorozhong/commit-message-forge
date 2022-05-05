import SwiftUI

struct ScopeTextFeildView: View {
  @State var scope: String = ""

  var body: some View {
    VStack {
      HStack {
        Text("scope")
        Spacer()
      }
      TextField("<scope>", text: $scope)
    }
  }
}

struct ScopeTextFeildView_Previews: PreviewProvider {
  static var previews: some View {
    ScopeTextFeildView()
      .previewLayout(.fixed(width: 300, height: 70))
  }
}

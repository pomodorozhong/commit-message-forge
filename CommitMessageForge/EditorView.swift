import SwiftUI

struct EditorView: View {

  var body: some View {
    VStack {
      HStack(spacing: 10) {
        TypePickerView()
          .frame(width: 120)
        ScopeTextFeildView()
      }
    }
  }
}

extension EditorView {

}

struct EditorView_Previews: PreviewProvider {
  static var previews: some View {
    EditorView()
  }
}

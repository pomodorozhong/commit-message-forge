import SwiftUI

struct EditorView: View {

  var body: some View {
    VStack(spacing: 15) {
      HStack(spacing: 10) {
        TypePickerView()
          .frame(width: 120)
        ScopeTextFeildView()
      }
      SubjectTextFeildView()
      BodyTextEditorView()
      Spacer()
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

import SwiftUI

struct EditorView: View {

  var body: some View {
    VStack {
      HStack {
        TypePickerView()
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

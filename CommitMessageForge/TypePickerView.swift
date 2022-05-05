import SwiftUI

struct TypePickerView: View {
  @State private var selection = "<type>"
  let types = [
    "feat✨",
    "fix🐛",
    "perf⚡️",
    "test✅",
    "docs📝",
    "refactor♻️",
    "style💄",
    "revert🔙",
    "build📦",
    "config🔧",
    "git🐙",
    "ci👷",
    "chore⚙️",
    "init🎉",
    "publish🚀",
  ]

  var ganeratedTypes: [String] {
    let defaultSelection = "<type>"
    var list: [String] = []
    list.append(defaultSelection)
    list.append(contentsOf: types)

    return list

  }

  var body: some View {
    VStack {
      HStack {
        Text("type")
        Spacer()
      }

      Picker("", selection: $selection) {
        ForEach(ganeratedTypes, id: \.self) { type in
          Text("\(type)")
        }
      }
      .pickerStyle(.menu)
      .padding(.leading, -8)
    }
  }
}

struct TypePickerView_Previews: PreviewProvider {
  static var previews: some View {
    TypePickerView()
  }
}

import SwiftUI

struct TypePickerView: View {
  @State private var selection = "<feat>"
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
    let defaultSelection = "<feat>"
    var list: [String] = []
    list.append(defaultSelection)
    list.append(contentsOf: types)

    return list

  }

  var body: some View {
    VStack {
      Picker("", selection: $selection) {
        ForEach(ganeratedTypes, id: \.self) { type in
          Text("\(type)")
        }
      }
      .pickerStyle(.menu)
    }
  }
}

struct TypePickerView_Previews: PreviewProvider {
  static var previews: some View {
    TypePickerView()
  }
}

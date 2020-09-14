/* 
* Natively highlighting text is broken on Flutter Web. 
* Possible fix at https://github.com/flutter/flutter/pull/55419
* 
* This code is a temporary workaround
*
* ref. https://github.com/flutter/flutter/pull/55419#issuecomment-640988193
*/

import "dart:io";

void main() {
  final File jsFile = File("build/web/main.dart.js");
  final lines = enableSelection(jsFile.readAsStringSync().split("\n"));
  jsFile.writeAsStringSync(lines.join("\n"));
}

List<String> enableSelection(List<String> lines) {
  for (int index = 0; index < lines.length; index++) {
    final String line = lines[index];
    lines[index] = lines[index].replaceAllMapped(RegExp(r'(.\.b.)\(p,"user-select.*'), (m) =>
    '${m[1]}(p,"user-select","auto")'
    );
    lines[index] = lines[index].replaceAllMapped(RegExp(r'(.\.b.)\(p,"-webkit-user-select".*'), (m) =>
    '${m[1]}(p,"-webkit-user-select","auto")'
    );
    lines[index] = lines[index].replaceAllMapped(RegExp(r'(.\.b.)\(p,"-ms-user-select".*'), (m) =>
    '${m[1]}(p,"-ms-user-select","auto")'
    );
    lines[index] = lines[index].replaceAllMapped(RegExp(r'(.\.b.)\(p,""-moz-user-select".*'), (m) =>
    '${m[1]}(p,"-ms-user-select","auto")'
    );
    if (lines[index].startsWith('C.d.V(g,C.d.N(g,"pointer-events")')) {  // catching pointer events
      lines[index] = 'C.d.V(g,C.d.N(g,"pointer-events"),"auto","")';
    }
  }
  return lines;
}

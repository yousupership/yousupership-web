/* 
* Natively highlighting text is broken on Flutter Web. 
* Possible fix at https://github.com/flutter/flutter/pull/55419
* 
* This code is a temporary workaround
*
* ref. https://github.com/flutter/flutter/pull/55419#issuecomment-640988193
*/

import "dart:io";

final File jsFile = File("build/web/main.dart.js");
final List<String> lines = jsFile.readAsStringSync().split("\n");

void main() {
  int finished = 0;
  for (int index = 0; index < lines.length; index++) {
    final String line = lines [index];
    if (line.startsWith(r'k.bm(p,"user-select"')) {  // allowing user to select text
      lines [index] = 'k.bm(p,"user-select","auto")';
      finished++;
    } else if (line.startsWith(r'k.bm(p,"-webkit-user-select"')) {  // Safari ^
      lines [index] = 'k.bm(p,"-webkit-user-select","auto")';
      finished++;
    } else if (line.startsWith(r'k.bm(p,"-ms-user-select"')) {  // Edge/IE ^
      lines [index] = 'k.bm(p,"-ms-user-select","auto")';
      finished++;
    } else if (line.startsWith('C.d.V(g,C.d.N(g,"pointer-events")')) {  // catching pointer events
      lines [index] = 'C.d.V(g,C.d.N(g,"pointer-events"),"auto","")';
      finished++;
    } else if (finished == 4) {
      break;
    }
  }
  if (finished != 4) {
    throw StateError("Could not make modifications");
  }
  jsFile.writeAsStringSync(lines.join("\n"));
}

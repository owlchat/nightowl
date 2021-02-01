import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:night_owl/src/multiavatar.dart';

void main() {
  test('Starcrasher', () {
    // https://api.multiavatar.com/Starcrasher.svg
    final multiavatar = Multiavatar(
      seed: '5d04a93b73aa1fe7af73044badcb0ef495501d550139f42eb35a23c75769118a',
    );
    final svg = multiavatar.toSvg();
    final path = '/tmp/starcrasher.svg';
    File(path).writeAsStringSync(svg, flush: true);
    Process.run('firefox', [path]);
  });
}

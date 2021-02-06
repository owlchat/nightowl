import 'package:flutter_test/flutter_test.dart';
import 'package:night_owl/src/owl_alias.dart';

void main() {
  test('cute_gray_dolphin', () {
    const aliasHash = '6d04a93b73aa1fe7af73044badcb0ef495501d550139f';
    final randomAlias = generateAlias(seed: aliasHash);
    expect(randomAlias, 'cute_gray_dolphin');
  });
}

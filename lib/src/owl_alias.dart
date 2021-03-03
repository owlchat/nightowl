import 'dart:math';

String generateAlias({required String seed}) {
  final sha256Numbers = seed.replaceAll(RegExp(r'\D'), '');
  var hash = sha256Numbers.substring(0, 12);
  if (hash.isEmpty) {
    hash = ''.padLeft(12, '0');
  }

  final rndSeed = int.parse(hash);
  // create a random with a fixed seed
  // so the alias will be the same for the same hash.
  final rnd = Random(rndSeed);

  final noun = _randomNoun(rnd);
  final descriptor = _randomDescriptor(noun, rnd);
  final color = _randomColor(rnd);

  final alias = [descriptor, color, noun].join('_');
  return alias;
}

T _random<T>(List<T> items, Random rnd) {
  final i = rnd.nextInt(items.length);
  return items[i];
}

String _randomNoun(Random rnd) {
  return _random(_kSeaList, rnd);
}

String _randomDescriptor(String noun, Random rnd) {
  if (!_kSeaCreatures.contains(noun)) {
    return _random(_kDescriptors, rnd);
  } else {
    return _random([..._kDescriptors, ..._kCreatureDescriptors], rnd);
  }
}

String _randomColor(Random rnd) {
  return _random(_kColors, rnd);
}

const _kSeaCreatures = [
  'walrus',
  'seal',
  'fish',
  'shark',
  'clam',
  'coral',
  'whale',
  'crab',
  'lobster',
  'starfish',
  'eel',
  'dolphin',
  'squid',
  'jellyfish',
  'ray',
  'shrimp',
  'mantaRay',
  'angler',
  'snorkler',
  'scubaDiver',
  'urchin',
  'anemone',
  'morel',
  'axolotl',
];

const _kSeaObjects = [
  'boat',
  'ship',
  'submarine',
  'yacht',
  'dinghy',
  'raft',
  'kelp',
  'seaweed',
  'anchor',
];

const _kAdjectiveDescriptors = [
  'cute',
  'adorable',
  'lovable',
  'happy',
  'sandy',
  'bubbly',
  'friendly',
  'floating',
  'drifting',
];

const _kSizeDescriptors = [
  'large',
  'big',
  'small',
  'giant',
  'massive',
  'tiny',
  'little',
];

const _kCreatureDescriptors = [
  'swimming',
  'sleeping',
  'eating',
  'hiding',
];

const _kSeaList = [
  ..._kSeaObjects,
  ..._kSeaCreatures,
];

const _kDescriptors = [
  ..._kAdjectiveDescriptors,
  ..._kSizeDescriptors,
];

const _kColors = [
  'blue',
  'green',
  'aqua',
  'gray',
  'azure',
  'navy',
];

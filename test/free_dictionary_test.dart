import 'package:free_dictionary/free_dictionary.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('Check that getWordMeaning returns a list of WordMeaning', () async {
      final meanings = await FreeDictionary.getWordMeaning(word: "test");
      expect(meanings, isA<List<WordMeaning>>());
    });
  });
}

import 'package:free_dictionary/free_dictionary.dart';

void main() async {
  var awesome = FreeDictionary.getWordMeaning(word: "stairs");
  print('awesome: $awesome');
}

import 'package:free_english_dictionary/free_english_dictionary.dart';

void main() async {
  // get word meaning
  var meanings = FreeDictionary.getWordMeaning(word: "stairs");
  // print meanings
  print(meanings);
}

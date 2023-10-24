import 'package:free_dictionary/free_dictionary.dart';

void main() async {
  // get word meaning
  var meanings = FreeDictionary.getWordMeaning(word: "stairs");
  // print meanings
  print(meanings);
}

import 'package:free_dictionary/free_dictionary.dart';

/// Wrapper class for public facing functions
class FreeDictionary {
  /// Gets english dictionary meaning of a word
  /// param word
  /// returns Future of empty list if empty string is provided as word
  /// returns Future of list of word meaning if it exists
  /// throws exceptions in case of network or server issues
  static Future<List<WordMeaning>> getWordMeaning({required String word}) async {
    return FreeDictionaryService.getWordMeaning(word);
  }
}

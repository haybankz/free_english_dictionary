import 'package:free_english_dictionary/src/entities/license.dart';
import 'package:free_english_dictionary/src/entities/meaning.dart';
import 'package:free_english_dictionary/src/entities/phonetic.dart';

/// class for holding [word], [phonetic], [phonetics], [meanings], [license] and [sourceUrls]
class WordMeaning {
  String? word;
  String? phonetic;
  List<Phonetic>? phonetics;
  List<Meaning>? meanings;
  License? license;
  List<String>? sourceUrls;

  WordMeaning({this.word, this.phonetic, this.phonetics, this.meanings, this.license, this.sourceUrls});

  /// method to parse json to [WordMeaning] object.
  WordMeaning.fromJson(Map<String, dynamic> json) {
    word = json['word'];
    phonetic = json['phonetic'];
    if (json['phonetics'] != null) {
      phonetics = <Phonetic>[];
      json['phonetics'].forEach((v) {
        phonetics!.add(Phonetic.fromJson(v));
      });
    }
    if (json['meanings'] != null) {
      meanings = <Meaning>[];
      json['meanings'].forEach((v) {
        meanings!.add(Meaning.fromJson(v));
      });
    }
    license = json['license'] != null ? License.fromJson(json['license']) : null;
    sourceUrls = json['sourceUrls'].cast<String>();
  }

  /// method to convert [WordMeaning] object to Map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['word'] = word;
    data['phonetic'] = phonetic;
    if (phonetics != null) {
      data['phonetics'] = phonetics!.map((v) => v.toJson()).toList();
    }
    if (meanings != null) {
      data['meanings'] = meanings!.map((v) => v.toJson()).toList();
    }
    if (license != null) {
      data['license'] = license!.toJson();
    }
    data['sourceUrls'] = sourceUrls;
    return data;
  }

  /// method for converting [WordMeaning] object to string
  @override
  String toString() {
    return 'WordMeaning{\nword: $word, \nphonetic: $phonetic, \nphonetics: $phonetics, \nmeanings: $meanings, \nlicense: $license, \nsourceUrls: $sourceUrls\n}';
  }

  /// method for [==] operator
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordMeaning &&
          runtimeType == other.runtimeType &&
          word == other.word &&
          phonetic == other.phonetic &&
          phonetics == other.phonetics &&
          meanings == other.meanings &&
          license == other.license &&
          sourceUrls == other.sourceUrls;

  /// method for getting [hashCode]
  @override
  int get hashCode =>
      word.hashCode ^
      phonetic.hashCode ^
      phonetics.hashCode ^
      meanings.hashCode ^
      license.hashCode ^
      sourceUrls.hashCode;
}

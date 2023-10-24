import 'package:free_dictionary/src/entites/license.dart';
import 'package:free_dictionary/src/entites/meaning.dart';
import 'package:free_dictionary/src/entites/phonetic.dart';

class WordMeaning {
  String? word;
  String? phonetic;
  List<Phonetic>? phonetics;
  List<Meaning>? meanings;
  License? license;
  List<String>? sourceUrls;

  WordMeaning({this.word, this.phonetic, this.phonetics, this.meanings, this.license, this.sourceUrls});

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
}

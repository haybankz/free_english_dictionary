import 'package:free_english_dictionary/src/entities/definition.dart';

/// class for holding [partOfSpeech], [definitions], [synonyms] and [antonyms]
class Meaning {
  String? partOfSpeech;
  List<Definition>? definitions;
  List<String>? synonyms;
  List<String>? antonyms;

  Meaning({this.partOfSpeech, this.definitions, this.synonyms, this.antonyms});

  /// method to parse json to [WordMeaning] object.
  Meaning.fromJson(Map<String, dynamic> json) {
    partOfSpeech = json['partOfSpeech'];
    if (json['definitions'] != null) {
      definitions = <Definition>[];
      json['definitions'].forEach((v) {
        definitions!.add(Definition.fromJson(v));
      });
    }
    synonyms = json['synonyms'].cast<String>();
    antonyms = json['antonyms'].cast<String>();
  }

  /// method to convert [Meaning] object to Map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['partOfSpeech'] = partOfSpeech;
    if (definitions != null) {
      data['definitions'] = definitions!.map((v) => v.toJson()).toList();
    }
    data['synonyms'] = synonyms;
    data['antonyms'] = antonyms;
    return data;
  }

  /// method for converting [Meaning] object to string
  @override
  String toString() {
    return 'Meaning{\npartOfSpeech: $partOfSpeech, \ndefinitions: $definitions, \nsynonyms: $synonyms, \nantonyms: $antonyms\n}';
  }

  /// method for [==] operator
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Meaning &&
          runtimeType == other.runtimeType &&
          partOfSpeech == other.partOfSpeech &&
          definitions == other.definitions &&
          synonyms == other.synonyms &&
          antonyms == other.antonyms;

  /// method for getting [hashCode]
  @override
  int get hashCode => partOfSpeech.hashCode ^ definitions.hashCode ^ synonyms.hashCode ^ antonyms.hashCode;
}

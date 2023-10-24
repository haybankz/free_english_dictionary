import 'package:free_dictionary/src/entities/definition.dart';

class Meaning {
  String? partOfSpeech;
  List<Definition>? definitions;
  List<String>? synonyms;
  List<String>? antonyms;

  Meaning({this.partOfSpeech, this.definitions, this.synonyms, this.antonyms});

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

  @override
  String toString() {
    return 'Meaning{\npartOfSpeech: $partOfSpeech, \ndefinitions: $definitions, \nsynonyms: $synonyms, \nantonyms: $antonyms\n}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Meaning &&
          runtimeType == other.runtimeType &&
          partOfSpeech == other.partOfSpeech &&
          definitions == other.definitions &&
          synonyms == other.synonyms &&
          antonyms == other.antonyms;

  @override
  int get hashCode => partOfSpeech.hashCode ^ definitions.hashCode ^ synonyms.hashCode ^ antonyms.hashCode;
}

/// Definition class that holds [definition], [synonyms], [antonyms] and [example].
class Definition {
  String? definition;
  List<String>? synonyms;
  List<String>? antonyms;
  String? example;

  Definition({this.definition, this.synonyms, this.antonyms, this.example});

  /// method to parse json to [Definition] object.
  Definition.fromJson(Map<String, dynamic> json) {
    definition = json['definition'];
    synonyms = json['synonyms'].cast<String>();
    antonyms = json['antonyms'].cast<String>();
    example = json['example'];
  }

  /// method to convert [Definition] object to Map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['definition'] = definition;
    data['synonyms'] = synonyms;
    data['antonyms'] = antonyms;
    data['example'] = example;
    return data;
  }

  @override
  String toString() {
    return 'Definition{\ndefinition: $definition, \nsynonyms: $synonyms, \nantonyms: $antonyms, \nexample: $example\n}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Definition &&
          runtimeType == other.runtimeType &&
          definition == other.definition &&
          synonyms == other.synonyms &&
          antonyms == other.antonyms &&
          example == other.example;

  @override
  int get hashCode => definition.hashCode ^ synonyms.hashCode ^ antonyms.hashCode ^ example.hashCode;
}

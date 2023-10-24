class Definition {
  String? definition;
  List<String>? synonyms;
  List<String>? antonyms;
  String? example;

  Definition({this.definition, this.synonyms, this.antonyms, this.example});

  Definition.fromJson(Map<String, dynamic> json) {
    definition = json['definition'];
    synonyms = json['synonyms'].cast<String>();
    antonyms = json['antonyms'].cast<String>();
    example = json['example'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['definition'] = definition;
    data['synonyms'] = synonyms;
    data['antonyms'] = antonyms;
    data['example'] = example;
    return data;
  }
}

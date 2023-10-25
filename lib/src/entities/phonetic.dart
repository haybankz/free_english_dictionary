import 'package:free_english_dictionary/src/entities/license.dart';

class Phonetic {
  String? text;
  String? audio;
  String? sourceUrl;
  License? license;

  Phonetic({this.text, this.audio, this.sourceUrl, this.license});

  Phonetic.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    audio = json['audio'];
    sourceUrl = json['sourceUrl'];
    license = json['license'] != null ? License.fromJson(json['license']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['audio'] = audio;
    data['sourceUrl'] = sourceUrl;
    if (license != null) {
      data['license'] = license!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'Phonetic{\ntext: $text, \naudio: $audio, \nsourceUrl: $sourceUrl, \nlicense: $license}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Phonetic &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          audio == other.audio &&
          sourceUrl == other.sourceUrl &&
          license == other.license;

  @override
  int get hashCode => text.hashCode ^ audio.hashCode ^ sourceUrl.hashCode ^ license.hashCode;
}

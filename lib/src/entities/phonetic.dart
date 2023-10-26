import 'package:free_english_dictionary/src/entities/license.dart';

/// class for holding [text], [audio], [sourceUrl] and [license]
class Phonetic {
  String? text;
  String? audio;
  String? sourceUrl;
  License? license;

  Phonetic({this.text, this.audio, this.sourceUrl, this.license});

  /// method to parse json to [Phonetic] object.
  Phonetic.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    audio = json['audio'];
    sourceUrl = json['sourceUrl'];
    license = json['license'] != null ? License.fromJson(json['license']) : null;
  }

  /// method to convert [Phonetic] object to Map.
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

  /// method for converting [Phonetic] object to string
  @override
  String toString() {
    return 'Phonetic{\ntext: $text, \naudio: $audio, \nsourceUrl: $sourceUrl, \nlicense: $license}';
  }

  /// method for [==] operator
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Phonetic &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          audio == other.audio &&
          sourceUrl == other.sourceUrl &&
          license == other.license;

  /// method for getting [hashCode]
  @override
  int get hashCode => text.hashCode ^ audio.hashCode ^ sourceUrl.hashCode ^ license.hashCode;
}

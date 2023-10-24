import 'package:free_dictionary/src/entites/license.dart';

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
}

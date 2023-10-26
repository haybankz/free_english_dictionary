/// License class that holds [name] and [url]
class License {
  String? name;
  String? url;

  License({this.name, this.url});

  /// method to parse json to [License] object
  License.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  /// method to convert [License] object  to Map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }

  /// method for converting [License] object to string
  @override
  String toString() {
    return 'License{\nname: $name, \nurl: $url\n}';
  }

  /// method for [==] operator
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is License &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          url == other.url;

  /// method for getting [hashCode]
  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}

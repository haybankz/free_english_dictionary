class License {
  String? name;
  String? url;

  License({this.name, this.url});

  License.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }

  @override
  String toString() {
    return 'License{\nname: $name, \nurl: $url\n}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is License && runtimeType == other.runtimeType && name == other.name && url == other.url;

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}

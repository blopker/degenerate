// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages28MessagesContentVariant3ImageUrl {const Messages28MessagesContentVariant3ImageUrl({this.url});

factory Messages28MessagesContentVariant3ImageUrl.fromJson(Map<String, dynamic> json) { return Messages28MessagesContentVariant3ImageUrl(
  url: json['url'] as String?,
); }

/// image uri with data (e.g. data:image/jpeg;base64,/9j/...). HTTP URL will not be accepted
final String? url;

Map<String, dynamic> toJson() { return {
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url'}.contains(key)); } 
Messages28MessagesContentVariant3ImageUrl copyWith({String Function()? url}) { return Messages28MessagesContentVariant3ImageUrl(
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages28MessagesContentVariant3ImageUrl &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'Messages28MessagesContentVariant3ImageUrl(url: $url)'; } 
 }

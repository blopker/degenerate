// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages47MessagesContentVariant2ImageUrl {const Messages47MessagesContentVariant2ImageUrl({this.url});

factory Messages47MessagesContentVariant2ImageUrl.fromJson(Map<String, dynamic> json) { return Messages47MessagesContentVariant2ImageUrl(
  url: json['url'] as String?,
); }

/// image uri with data (e.g. data:image/jpeg;base64,/9j/...). HTTP URL will not be accepted
final String? url;

Map<String, dynamic> toJson() { return {
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url'}.contains(key)); } 
Messages47MessagesContentVariant2ImageUrl copyWith({String Function()? url}) { return Messages47MessagesContentVariant2ImageUrl(
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages47MessagesContentVariant2ImageUrl &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'Messages47MessagesContentVariant2ImageUrl(url: $url)'; } 
 }

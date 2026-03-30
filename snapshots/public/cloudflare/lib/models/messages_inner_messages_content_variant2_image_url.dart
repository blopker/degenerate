// GENERATED CODE - DO NOT MODIFY BY HAND

final class MessagesInnerMessagesContentVariant2ImageUrl {const MessagesInnerMessagesContentVariant2ImageUrl({this.url});

factory MessagesInnerMessagesContentVariant2ImageUrl.fromJson(Map<String, dynamic> json) { return MessagesInnerMessagesContentVariant2ImageUrl(
  url: json['url'] as String?,
); }

/// image uri with data (e.g. data:image/jpeg;base64,/9j/...). HTTP URL will not be accepted
final String? url;

Map<String, dynamic> toJson() { return {
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url'}.contains(key)); } 
MessagesInnerMessagesContentVariant2ImageUrl copyWith({String Function()? url}) { return MessagesInnerMessagesContentVariant2ImageUrl(
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessagesInnerMessagesContentVariant2ImageUrl &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'MessagesInnerMessagesContentVariant2ImageUrl(url: $url)'; } 
 }

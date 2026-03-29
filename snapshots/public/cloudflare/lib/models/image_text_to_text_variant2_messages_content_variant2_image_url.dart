// GENERATED CODE - DO NOT MODIFY BY HAND

/// Image URL object (when type is 'image_url').
final class ImageTextToTextVariant2MessagesContentVariant2ImageUrl {const ImageTextToTextVariant2MessagesContentVariant2ImageUrl({required this.url});

factory ImageTextToTextVariant2MessagesContentVariant2ImageUrl.fromJson(Map<String, dynamic> json) { return ImageTextToTextVariant2MessagesContentVariant2ImageUrl(
  url: json['url'] as String,
); }

/// Image URI with data (e.g. data:image/jpeg;base64,/9j/...).
final String url;

Map<String, dynamic> toJson() { return {
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
ImageTextToTextVariant2MessagesContentVariant2ImageUrl copyWith({String? url}) { return ImageTextToTextVariant2MessagesContentVariant2ImageUrl(
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageTextToTextVariant2MessagesContentVariant2ImageUrl &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'ImageTextToTextVariant2MessagesContentVariant2ImageUrl(url: $url)'; } 
 }

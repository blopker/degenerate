// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the detail level of the image. `low` uses fewer tokens, you can opt in to high resolution using `high`.
final class MessageDeltaContentImageUrlObjectImageUrlDetail {const MessageDeltaContentImageUrlObjectImageUrlDetail._(this.value);

factory MessageDeltaContentImageUrlObjectImageUrlDetail.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'low' => low,
  'high' => high,
  _ => MessageDeltaContentImageUrlObjectImageUrlDetail._(json),
}; }

static const MessageDeltaContentImageUrlObjectImageUrlDetail auto = MessageDeltaContentImageUrlObjectImageUrlDetail._('auto');

static const MessageDeltaContentImageUrlObjectImageUrlDetail low = MessageDeltaContentImageUrlObjectImageUrlDetail._('low');

static const MessageDeltaContentImageUrlObjectImageUrlDetail high = MessageDeltaContentImageUrlObjectImageUrlDetail._('high');

static const List<MessageDeltaContentImageUrlObjectImageUrlDetail> values = [auto, low, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageDeltaContentImageUrlObjectImageUrlDetail && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageDeltaContentImageUrlObjectImageUrlDetail($value)'; } 
 }
final class MessageDeltaContentImageUrlObjectImageUrl {const MessageDeltaContentImageUrlObjectImageUrl({this.url, this.detail = MessageDeltaContentImageUrlObjectImageUrlDetail.auto, });

factory MessageDeltaContentImageUrlObjectImageUrl.fromJson(Map<String, dynamic> json) { return MessageDeltaContentImageUrlObjectImageUrl(
  url: json['url'] as String?,
  detail: json.containsKey('detail') ? MessageDeltaContentImageUrlObjectImageUrlDetail.fromJson(json['detail'] as String) : MessageDeltaContentImageUrlObjectImageUrlDetail.auto,
); }

/// The URL of the image, must be a supported image types: jpeg, jpg, png, gif, webp.
final String? url;

/// Specifies the detail level of the image. `low` uses fewer tokens, you can opt in to high resolution using `high`.
final MessageDeltaContentImageUrlObjectImageUrlDetail detail;

Map<String, dynamic> toJson() { return {
  'url': ?url,
  'detail': detail.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url', 'detail'}.contains(key)); } 
MessageDeltaContentImageUrlObjectImageUrl copyWith({String Function()? url, MessageDeltaContentImageUrlObjectImageUrlDetail Function()? detail, }) { return MessageDeltaContentImageUrlObjectImageUrl(
  url: url != null ? url() : this.url,
  detail: detail != null ? detail() : this.detail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageDeltaContentImageUrlObjectImageUrl &&
          url == other.url &&
          detail == other.detail; } 
@override int get hashCode { return Object.hash(url, detail); } 
@override String toString() { return 'MessageDeltaContentImageUrlObjectImageUrl(url: $url, detail: $detail)'; } 
 }

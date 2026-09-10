// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the detail level of the image. `low` uses fewer tokens, you can opt in to high resolution using `high`. Default value is `auto`
@immutable final class MessageContentImageUrlObjectImageUrlDetail {const MessageContentImageUrlObjectImageUrlDetail._(this.value);

factory MessageContentImageUrlObjectImageUrlDetail.fromJson(String json) {return switch (json) {
  'auto' => auto,
  'low' => low,
  'high' => high,
  _ => MessageContentImageUrlObjectImageUrlDetail._(json),
};}

static const MessageContentImageUrlObjectImageUrlDetail auto = MessageContentImageUrlObjectImageUrlDetail._('auto');

static const MessageContentImageUrlObjectImageUrlDetail low = MessageContentImageUrlObjectImageUrlDetail._('low');

static const MessageContentImageUrlObjectImageUrlDetail high = MessageContentImageUrlObjectImageUrlDetail._('high');

static const List<MessageContentImageUrlObjectImageUrlDetail> values = [auto, low, high];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MessageContentImageUrlObjectImageUrlDetail && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MessageContentImageUrlObjectImageUrlDetail($value)';}
}
@immutable final class MessageContentImageUrlObjectImageUrl {const MessageContentImageUrlObjectImageUrl({required this.url, this.detail, });

factory MessageContentImageUrlObjectImageUrl.fromJson(Map<String, dynamic> json) {return MessageContentImageUrlObjectImageUrl(
  url: Uri.parse(json['url'] as String),
  detail: json['detail'] != null ? MessageContentImageUrlObjectImageUrlDetail.fromJson(json['detail'] as String) : null,
);}

/// The external URL of the image, must be a supported image types: jpeg, jpg, png, gif, webp.
final Uri url;

/// Specifies the detail level of the image. `low` uses fewer tokens, you can opt in to high resolution using `high`. Default value is `auto`
final MessageContentImageUrlObjectImageUrlDetail? detail;

/// The value with the schema default applied when absent.
MessageContentImageUrlObjectImageUrlDetail get detailOrDefault {return detail ?? MessageContentImageUrlObjectImageUrlDetail.fromJson('auto');}
Map<String, dynamic> toJson() {return {
  'url': url.toString(),
  if (detail != null) 'detail': detail?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('url') && json['url'] is String;}
MessageContentImageUrlObjectImageUrl copyWith({Uri? url, MessageContentImageUrlObjectImageUrlDetail? Function()? detail, }) {return MessageContentImageUrlObjectImageUrl(
  url: url ?? this.url,
  detail: detail != null ? detail() : this.detail,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is MessageContentImageUrlObjectImageUrl &&
          url == other.url &&
          detail == other.detail;}
@override int get hashCode {return Object.hash(url, detail);}
@override String toString() {return 'MessageContentImageUrlObjectImageUrl(url: $url, detail: $detail)';}
}

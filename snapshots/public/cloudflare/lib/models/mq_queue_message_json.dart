// GENERATED CODE - DO NOT MODIFY BY HAND

final class MqQueueMessageJsonContentType {const MqQueueMessageJsonContentType._(this.value);

factory MqQueueMessageJsonContentType.fromJson(String json) { return switch (json) {
  'json' => $json,
  _ => MqQueueMessageJsonContentType._(json),
}; }

static const MqQueueMessageJsonContentType $json = MqQueueMessageJsonContentType._('json');

static const List<MqQueueMessageJsonContentType> values = [$json];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqQueueMessageJsonContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqQueueMessageJsonContentType($value)'; } 
 }
final class MqQueueMessageJson {const MqQueueMessageJson({this.body, this.contentType, });

factory MqQueueMessageJson.fromJson(Map<String, dynamic> json) { return MqQueueMessageJson(
  body: (json['body'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  contentType: json['content_type'] != null ? MqQueueMessageJsonContentType.fromJson(json['content_type'] as String) : null,
); }

final Map<String,dynamic>? body;

final MqQueueMessageJsonContentType? contentType;

Map<String, dynamic> toJson() { return {
  'body': ?body,
  if (contentType != null) 'content_type': contentType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body', 'content_type'}.contains(key)); } 
MqQueueMessageJson copyWith({Map<String, dynamic> Function()? body, MqQueueMessageJsonContentType Function()? contentType, }) { return MqQueueMessageJson(
  body: body != null ? body() : this.body,
  contentType: contentType != null ? contentType() : this.contentType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqQueueMessageJson &&
          body == other.body &&
          contentType == other.contentType; } 
@override int get hashCode { return Object.hash(body, contentType); } 
@override String toString() { return 'MqQueueMessageJson(body: $body, contentType: $contentType)'; } 
 }

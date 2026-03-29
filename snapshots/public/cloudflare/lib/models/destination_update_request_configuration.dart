// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationUpdateRequestConfigurationType {const DestinationUpdateRequestConfigurationType._(this.value);

factory DestinationUpdateRequestConfigurationType.fromJson(String json) { return switch (json) {
  'logpush' => logpush,
  _ => DestinationUpdateRequestConfigurationType._(json),
}; }

static const DestinationUpdateRequestConfigurationType logpush = DestinationUpdateRequestConfigurationType._('logpush');

static const List<DestinationUpdateRequestConfigurationType> values = [logpush];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateRequestConfigurationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationUpdateRequestConfigurationType($value)'; } 
 }
final class DestinationUpdateRequestConfiguration {const DestinationUpdateRequestConfiguration({required this.headers, required this.type, required this.url, });

factory DestinationUpdateRequestConfiguration.fromJson(Map<String, dynamic> json) { return DestinationUpdateRequestConfiguration(
  headers: (json['headers'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  type: DestinationUpdateRequestConfigurationType.fromJson(json['type'] as String),
  url: json['url'] as String,
); }

final Map<String,String> headers;

final DestinationUpdateRequestConfigurationType type;

final String url;

Map<String, dynamic> toJson() { return {
  'headers': headers,
  'type': type.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('headers') &&
      json.containsKey('type') &&
      json.containsKey('url') && json['url'] is String; } 
DestinationUpdateRequestConfiguration copyWith({Map<String,String>? headers, DestinationUpdateRequestConfigurationType? type, String? url, }) { return DestinationUpdateRequestConfiguration(
  headers: headers ?? this.headers,
  type: type ?? this.type,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationUpdateRequestConfiguration &&
          headers == other.headers &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(headers, type, url); } 
@override String toString() { return 'DestinationUpdateRequestConfiguration(headers: $headers, type: $type, url: $url)'; } 
 }

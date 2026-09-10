// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_content_converter_value.dart';/// When enabled and the client sends an Accept header requesting text/markdown,
/// Cloudflare will convert HTML responses to Markdown format using the toMarkdown() service.
/// Refer to the [developer documentation](https://developers.cloudflare.com/workers-ai/features/markdown-conversion/) for more information.
@immutable final class ZonesContentConverterRequest {const ZonesContentConverterRequest({required this.id, required this.value, });

factory ZonesContentConverterRequest.fromJson(Map<String, dynamic> json) { return ZonesContentConverterRequest(
  id: json['id'],
  value: ZonesContentConverterValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesContentConverterValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesContentConverterRequest copyWith({dynamic Function()? id, ZonesContentConverterValue? value, }) { return ZonesContentConverterRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesContentConverterRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesContentConverterRequest(id: $id, value: $value)'; } 
 }

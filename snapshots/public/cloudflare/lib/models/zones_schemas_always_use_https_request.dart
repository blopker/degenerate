// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_always_use_https_value.dart';/// Reply to all requests for URLs that use "http" with a 301 redirect to the equivalent "https" URL. If you only want to redirect for a subset of requests, consider creating an "Always use HTTPS" page rule.
@immutable final class ZonesSchemasAlwaysUseHttpsRequest {const ZonesSchemasAlwaysUseHttpsRequest({required this.id, required this.value, });

factory ZonesSchemasAlwaysUseHttpsRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasAlwaysUseHttpsRequest(
  id: json['id'],
  value: ZonesAlwaysUseHttpsValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesAlwaysUseHttpsValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasAlwaysUseHttpsRequest copyWith({dynamic Function()? id, ZonesAlwaysUseHttpsValue? value, }) {return ZonesSchemasAlwaysUseHttpsRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasAlwaysUseHttpsRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasAlwaysUseHttpsRequest(id: $id, value: $value)';}
}

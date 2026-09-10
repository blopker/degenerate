// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_proxy_read_timeout_value.dart';/// Maximum time between two read operations from origin.
@immutable final class ZonesProxyReadTimeoutRequest {const ZonesProxyReadTimeoutRequest({required this.id, required this.value, });

factory ZonesProxyReadTimeoutRequest.fromJson(Map<String, dynamic> json) {return ZonesProxyReadTimeoutRequest(
  id: json['id'],
  value: ZonesProxyReadTimeoutValue.fromJson(json['value'] as num),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
/// Notes: Value must be between 1 and 6000
final ZonesProxyReadTimeoutValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesProxyReadTimeoutRequest copyWith({dynamic Function()? id, ZonesProxyReadTimeoutValue? value, }) {return ZonesProxyReadTimeoutRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesProxyReadTimeoutRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesProxyReadTimeoutRequest(id: $id, value: $value)';}
}

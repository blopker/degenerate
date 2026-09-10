// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_automatic_https_rewrites_value.dart';/// Enable the Automatic HTTPS Rewrites feature for this zone.
@immutable final class ZonesSchemasAutomaticHttpsRewritesRequest {const ZonesSchemasAutomaticHttpsRewritesRequest({required this.id, required this.value, });

factory ZonesSchemasAutomaticHttpsRewritesRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasAutomaticHttpsRewritesRequest(
  id: json['id'],
  value: ZonesAutomaticHttpsRewritesValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
/// Notes: Default value depends on the zone's plan level.
final ZonesAutomaticHttpsRewritesValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasAutomaticHttpsRewritesRequest copyWith({dynamic Function()? id, ZonesAutomaticHttpsRewritesValue? value, }) {return ZonesSchemasAutomaticHttpsRewritesRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasAutomaticHttpsRewritesRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasAutomaticHttpsRewritesRequest(id: $id, value: $value)';}
}

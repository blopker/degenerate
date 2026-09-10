// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_security_level_value.dart';/// Choose the appropriate security profile for your website, which will automatically adjust each of the security settings. If you choose to customize an individual security setting, the profile will become Custom. (https://support.cloudflare.com/hc/en-us/articles/200170056).
@immutable final class ZonesSchemasSecurityLevelRequest {const ZonesSchemasSecurityLevelRequest({required this.id, required this.value, });

factory ZonesSchemasSecurityLevelRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasSecurityLevelRequest(
  id: json['id'],
  value: ZonesSecurityLevelValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesSecurityLevelValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasSecurityLevelRequest copyWith({dynamic Function()? id, ZonesSecurityLevelValue? value, }) {return ZonesSchemasSecurityLevelRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasSecurityLevelRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasSecurityLevelRequest(id: $id, value: $value)';}
}

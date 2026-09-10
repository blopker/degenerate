// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_origin_error_page_pass_thru_value.dart';/// Cloudflare will proxy customer error pages on any 502,504 errors on origin server instead of showing a default Cloudflare error page. This does not apply to 522 errors and is limited to Enterprise Zones.
@immutable final class ZonesSchemasOriginErrorPagePassThruRequest {const ZonesSchemasOriginErrorPagePassThruRequest({required this.id, required this.value, });

factory ZonesSchemasOriginErrorPagePassThruRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasOriginErrorPagePassThruRequest(
  id: json['id'],
  value: ZonesOriginErrorPagePassThruValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesOriginErrorPagePassThruValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasOriginErrorPagePassThruRequest copyWith({dynamic Function()? id, ZonesOriginErrorPagePassThruValue? value, }) {return ZonesSchemasOriginErrorPagePassThruRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasOriginErrorPagePassThruRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasOriginErrorPagePassThruRequest(id: $id, value: $value)';}
}

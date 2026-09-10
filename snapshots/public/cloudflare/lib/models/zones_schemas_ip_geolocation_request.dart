// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_ip_geolocation_value.dart';/// Enable IP Geolocation to have Cloudflare geolocate visitors to your website and pass the country code to you. (https://support.cloudflare.com/hc/en-us/articles/200168236).
@immutable final class ZonesSchemasIpGeolocationRequest {const ZonesSchemasIpGeolocationRequest({required this.id, required this.value, });

factory ZonesSchemasIpGeolocationRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasIpGeolocationRequest(
  id: json['id'],
  value: ZonesIpGeolocationValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesIpGeolocationValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasIpGeolocationRequest copyWith({dynamic Function()? id, ZonesIpGeolocationValue? value, }) {return ZonesSchemasIpGeolocationRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasIpGeolocationRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasIpGeolocationRequest(id: $id, value: $value)';}
}

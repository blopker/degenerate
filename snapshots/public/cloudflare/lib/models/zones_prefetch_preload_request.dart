// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_prefetch_preload_value.dart';/// Cloudflare will prefetch any URLs that are included in the response headers. This is limited to Enterprise Zones.
@immutable final class ZonesPrefetchPreloadRequest {const ZonesPrefetchPreloadRequest({required this.id, required this.value, });

factory ZonesPrefetchPreloadRequest.fromJson(Map<String, dynamic> json) {return ZonesPrefetchPreloadRequest(
  id: json['id'],
  value: ZonesPrefetchPreloadValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesPrefetchPreloadValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesPrefetchPreloadRequest copyWith({dynamic Function()? id, ZonesPrefetchPreloadValue? value, }) {return ZonesPrefetchPreloadRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesPrefetchPreloadRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesPrefetchPreloadRequest(id: $id, value: $value)';}
}

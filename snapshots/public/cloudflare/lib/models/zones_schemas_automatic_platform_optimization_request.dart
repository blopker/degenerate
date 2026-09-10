// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_automatic_platform_optimization.dart';/// [Automatic Platform Optimization for WordPress](https://developers.cloudflare.com/automatic-platform-optimization/) serves your WordPress site from Cloudflare's edge network and caches third-party fonts.
@immutable final class ZonesSchemasAutomaticPlatformOptimizationRequest {const ZonesSchemasAutomaticPlatformOptimizationRequest({required this.id, required this.value, });

factory ZonesSchemasAutomaticPlatformOptimizationRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasAutomaticPlatformOptimizationRequest(
  id: json['id'],
  value: ZonesAutomaticPlatformOptimization.fromJson(json['value'] as Map<String, dynamic>),
);}

/// ID of the zone setting.
final dynamic id;

final ZonesAutomaticPlatformOptimization value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasAutomaticPlatformOptimizationRequest copyWith({dynamic Function()? id, ZonesAutomaticPlatformOptimization? value, }) {return ZonesSchemasAutomaticPlatformOptimizationRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasAutomaticPlatformOptimizationRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasAutomaticPlatformOptimizationRequest(id: $id, value: $value)';}
}

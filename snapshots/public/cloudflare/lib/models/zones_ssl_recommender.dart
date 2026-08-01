// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_ssl_recommender_enabled.dart';/// Enrollment in the SSL/TLS Recommender service which tries to detect and recommend (by sending periodic emails) the most secure SSL/TLS setting your origin servers support.
@immutable final class ZonesSslRecommender {const ZonesSslRecommender({this.enabled, this.id = const Omittable.absent(), });

factory ZonesSslRecommender.fromJson(Map<String, dynamic> json) { return ZonesSslRecommender(
  enabled: json['enabled'] != null ? ZonesSslRecommenderEnabled.fromJson(json['enabled'] as bool) : null,
  id: json.containsKey('id') ? Omittable(json['id']) : const Omittable.absent(),
); }

final ZonesSslRecommenderEnabled? enabled;

/// Enrollment value for SSL/TLS Recommender.
final Omittable<dynamic> id;

Map<String, dynamic> toJson() { return {
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (id.isPresent) 'id': id.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'id'}.contains(key)); } 
ZonesSslRecommender copyWith({ZonesSslRecommenderEnabled? Function()? enabled, Omittable<dynamic>? id, }) { return ZonesSslRecommender(
  enabled: enabled != null ? enabled() : this.enabled,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSslRecommender &&
          enabled == other.enabled &&
          id == other.id; } 
@override int get hashCode { return Object.hash(enabled, id); } 
@override String toString() { return 'ZonesSslRecommender(enabled: $enabled, id: $id)'; } 
 }

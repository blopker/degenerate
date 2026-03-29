// GENERATED CODE - DO NOT MODIFY BY HAND

import 'r2_class_based_metrics.dart';/// Metrics based on the class they belong to.
final class R2AccountLevelMetrics {const R2AccountLevelMetrics({this.infrequentAccess, this.standard, });

factory R2AccountLevelMetrics.fromJson(Map<String, dynamic> json) { return R2AccountLevelMetrics(
  infrequentAccess: json['infrequentAccess'] != null ? R2ClassBasedMetrics.fromJson(json['infrequentAccess'] as Map<String, dynamic>) : null,
  standard: json['standard'] != null ? R2ClassBasedMetrics.fromJson(json['standard'] as Map<String, dynamic>) : null,
); }

final R2ClassBasedMetrics? infrequentAccess;

final R2ClassBasedMetrics? standard;

Map<String, dynamic> toJson() { return {
  if (infrequentAccess != null) 'infrequentAccess': infrequentAccess?.toJson(),
  if (standard != null) 'standard': standard?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'infrequentAccess', 'standard'}.contains(key)); } 
R2AccountLevelMetrics copyWith({R2ClassBasedMetrics Function()? infrequentAccess, R2ClassBasedMetrics Function()? standard, }) { return R2AccountLevelMetrics(
  infrequentAccess: infrequentAccess != null ? infrequentAccess() : this.infrequentAccess,
  standard: standard != null ? standard() : this.standard,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2AccountLevelMetrics &&
          infrequentAccess == other.infrequentAccess &&
          standard == other.standard; } 
@override int get hashCode { return Object.hash(infrequentAccess, standard); } 
@override String toString() { return 'R2AccountLevelMetrics(infrequentAccess: $infrequentAccess, standard: $standard)'; } 
 }

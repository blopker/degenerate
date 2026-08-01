// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// R2 binding.
@immutable final class PagesDeploymentConfigValuesR2BucketsValue {const PagesDeploymentConfigValuesR2BucketsValue({required this.name, this.jurisdiction = const Omittable.absent(), });

factory PagesDeploymentConfigValuesR2BucketsValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesR2BucketsValue(
  jurisdiction: json.containsKey('jurisdiction') ? Omittable(json['jurisdiction'] as String?) : const Omittable.absent(),
  name: json['name'] as String,
); }

/// Jurisdiction of the R2 bucket.
final Omittable<String?> jurisdiction;

/// Name of the R2 bucket.
final String name;

Map<String, dynamic> toJson() { return {
  if (jurisdiction.isPresent) 'jurisdiction': jurisdiction.value,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
PagesDeploymentConfigValuesR2BucketsValue copyWith({Omittable<String?>? jurisdiction, String? name, }) { return PagesDeploymentConfigValuesR2BucketsValue(
  jurisdiction: jurisdiction ?? this.jurisdiction,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesR2BucketsValue &&
          jurisdiction == other.jurisdiction &&
          name == other.name; } 
@override int get hashCode { return Object.hash(jurisdiction, name); } 
@override String toString() { return 'PagesDeploymentConfigValuesR2BucketsValue(jurisdiction: $jurisdiction, name: $name)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class CustomUnitAmount {const CustomUnitAmount({this.maximum = const Omittable.absent(), this.minimum = const Omittable.absent(), this.preset = const Omittable.absent(), });

factory CustomUnitAmount.fromJson(Map<String, dynamic> json) { return CustomUnitAmount(
  maximum: json.containsKey('maximum') ? Omittable(json['maximum'] != null ? (json['maximum'] as num).toInt() : null) : const Omittable.absent(),
  minimum: json.containsKey('minimum') ? Omittable(json['minimum'] != null ? (json['minimum'] as num).toInt() : null) : const Omittable.absent(),
  preset: json.containsKey('preset') ? Omittable(json['preset'] != null ? (json['preset'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The maximum unit amount the customer can specify for this item.
final Omittable<int?> maximum;

/// The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
final Omittable<int?> minimum;

/// The starting unit amount which can be updated by the customer.
final Omittable<int?> preset;

Map<String, dynamic> toJson() { return {
  if (maximum.isPresent) 'maximum': maximum.value,
  if (minimum.isPresent) 'minimum': minimum.value,
  if (preset.isPresent) 'preset': preset.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'maximum', 'minimum', 'preset'}.contains(key)); } 
CustomUnitAmount copyWith({Omittable<int?>? maximum, Omittable<int?>? minimum, Omittable<int?>? preset, }) { return CustomUnitAmount(
  maximum: maximum ?? this.maximum,
  minimum: minimum ?? this.minimum,
  preset: preset ?? this.preset,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomUnitAmount &&
          maximum == other.maximum &&
          minimum == other.minimum &&
          preset == other.preset; } 
@override int get hashCode { return Object.hash(maximum, minimum, preset); } 
@override String toString() { return 'CustomUnitAmount(maximum: $maximum, minimum: $minimum, preset: $preset)'; } 
 }

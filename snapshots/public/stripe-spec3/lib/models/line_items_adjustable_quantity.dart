// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class LineItemsAdjustableQuantity {const LineItemsAdjustableQuantity({required this.enabled, this.maximum = const Omittable.absent(), this.minimum = const Omittable.absent(), });

factory LineItemsAdjustableQuantity.fromJson(Map<String, dynamic> json) { return LineItemsAdjustableQuantity(
  enabled: json['enabled'] as bool,
  maximum: json.containsKey('maximum') ? Omittable(json['maximum'] != null ? (json['maximum'] as num).toInt() : null) : const Omittable.absent(),
  minimum: json.containsKey('minimum') ? Omittable(json['minimum'] != null ? (json['minimum'] as num).toInt() : null) : const Omittable.absent(),
); }

final bool enabled;

final Omittable<int?> maximum;

final Omittable<int?> minimum;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (maximum.isPresent) 'maximum': maximum.value,
  if (minimum.isPresent) 'minimum': minimum.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
LineItemsAdjustableQuantity copyWith({bool? enabled, Omittable<int?>? maximum, Omittable<int?>? minimum, }) { return LineItemsAdjustableQuantity(
  enabled: enabled ?? this.enabled,
  maximum: maximum ?? this.maximum,
  minimum: minimum ?? this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LineItemsAdjustableQuantity &&
          enabled == other.enabled &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(enabled, maximum, minimum); } 
@override String toString() { return 'LineItemsAdjustableQuantity(enabled: $enabled, maximum: $maximum, minimum: $minimum)'; } 
 }

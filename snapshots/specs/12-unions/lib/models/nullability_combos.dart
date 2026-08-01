// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NullabilityCombos {const NullabilityCombos({required this.requiredNonNullable, required this.requiredNullable, this.optionalNonNullable, this.optionalNullable = const Omittable.absent(), });

factory NullabilityCombos.fromJson(Map<String, dynamic> json) { return NullabilityCombos(
  requiredNonNullable: json['requiredNonNullable'] as String,
  requiredNullable: json['requiredNullable'] as String?,
  optionalNonNullable: json['optionalNonNullable'] as String?,
  optionalNullable: json.containsKey('optionalNullable') ? Omittable(json['optionalNullable'] as String?) : const Omittable.absent(),
); }

final String requiredNonNullable;

final String? requiredNullable;

final String? optionalNonNullable;

final Omittable<String?> optionalNullable;

Map<String, dynamic> toJson() { return {
  'requiredNonNullable': requiredNonNullable,
  'requiredNullable': requiredNullable,
  'optionalNonNullable': ?optionalNonNullable,
  if (optionalNullable.isPresent) 'optionalNullable': optionalNullable.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requiredNonNullable') && json['requiredNonNullable'] is String &&
      json.containsKey('requiredNullable') && json['requiredNullable'] is String; } 
NullabilityCombos copyWith({String? requiredNonNullable, String? Function()? requiredNullable, String? Function()? optionalNonNullable, Omittable<String?>? optionalNullable, }) { return NullabilityCombos(
  requiredNonNullable: requiredNonNullable ?? this.requiredNonNullable,
  requiredNullable: requiredNullable != null ? requiredNullable() : this.requiredNullable,
  optionalNonNullable: optionalNonNullable != null ? optionalNonNullable() : this.optionalNonNullable,
  optionalNullable: optionalNullable ?? this.optionalNullable,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NullabilityCombos &&
          requiredNonNullable == other.requiredNonNullable &&
          requiredNullable == other.requiredNullable &&
          optionalNonNullable == other.optionalNonNullable &&
          optionalNullable == other.optionalNullable; } 
@override int get hashCode { return Object.hash(requiredNonNullable, requiredNullable, optionalNonNullable, optionalNullable); } 
@override String toString() { return 'NullabilityCombos(requiredNonNullable: $requiredNonNullable, requiredNullable: $requiredNullable, optionalNonNullable: $optionalNonNullable, optionalNullable: $optionalNullable)'; } 
 }

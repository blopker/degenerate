// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'node_selector.dart';/// VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
@immutable final class VolumeNodeAffinity {const VolumeNodeAffinity({this.$required});

factory VolumeNodeAffinity.fromJson(Map<String, dynamic> json) { return VolumeNodeAffinity(
  $required: json['required'] != null ? NodeSelector.fromJson(json['required'] as Map<String, dynamic>) : null,
); }

/// required specifies hard node constraints that must be met.
final NodeSelector? $required;

Map<String, dynamic> toJson() { return {
  if ($required != null) 'required': $required?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'required'}.contains(key)); } 
VolumeNodeAffinity copyWith({NodeSelector Function()? $required}) { return VolumeNodeAffinity(
  $required: $required != null ? $required() : this.$required,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VolumeNodeAffinity &&
          $required == other.$required; } 
@override int get hashCode { return $required.hashCode; } 
@override String toString() { return 'VolumeNodeAffinity(\$required: ${$required})'; } 
 }

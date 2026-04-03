// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RumToggleRumRequest {const RumToggleRumRequest({this.value});

factory RumToggleRumRequest.fromJson(Map<String, dynamic> json) { return RumToggleRumRequest(
  value: json['value'] as String?,
); }

/// Value can either be On or Off.
final String? value;

Map<String, dynamic> toJson() { return {
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
RumToggleRumRequest copyWith({String Function()? value}) { return RumToggleRumRequest(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumToggleRumRequest &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RumToggleRumRequest(value: $value)'; } 
 }

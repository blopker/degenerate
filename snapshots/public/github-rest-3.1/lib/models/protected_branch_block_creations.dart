// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ProtectedBranchBlockCreations {const ProtectedBranchBlockCreations({required this.enabled});

factory ProtectedBranchBlockCreations.fromJson(Map<String, dynamic> json) { return ProtectedBranchBlockCreations(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
ProtectedBranchBlockCreations copyWith({bool? enabled}) { return ProtectedBranchBlockCreations(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchBlockCreations &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ProtectedBranchBlockCreations(enabled: $enabled)'; } 
 }

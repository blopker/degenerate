// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_result_info_cursors.dart';/// Information to navigate the results.
@immutable final class RulesetsResultInfo {const RulesetsResultInfo({this.cursors});

factory RulesetsResultInfo.fromJson(Map<String, dynamic> json) { return RulesetsResultInfo(
  cursors: json['cursors'] != null ? RulesetsResultInfoCursors.fromJson(json['cursors'] as Map<String, dynamic>) : null,
); }

/// The set of cursors.
final RulesetsResultInfoCursors? cursors;

Map<String, dynamic> toJson() { return {
  if (cursors != null) 'cursors': cursors?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cursors'}.contains(key)); } 
RulesetsResultInfo copyWith({RulesetsResultInfoCursors Function()? cursors}) { return RulesetsResultInfo(
  cursors: cursors != null ? cursors() : this.cursors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsResultInfo &&
          cursors == other.cursors; } 
@override int get hashCode { return cursors.hashCode; } 
@override String toString() { return 'RulesetsResultInfo(cursors: $cursors)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RumCreateRuleRequest {const RumCreateRuleRequest({this.host, this.inclusive, this.isPaused, this.paths, });

factory RumCreateRuleRequest.fromJson(Map<String, dynamic> json) { return RumCreateRuleRequest(
  host: json['host'] as String?,
  inclusive: json['inclusive'] as bool?,
  isPaused: json['is_paused'] as bool?,
  paths: (json['paths'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final String? host;

/// Whether the rule includes or excludes traffic from being measured.
final bool? inclusive;

/// Whether the rule is paused or not.
final bool? isPaused;

final List<String>? paths;

Map<String, dynamic> toJson() { return {
  'host': ?host,
  'inclusive': ?inclusive,
  'is_paused': ?isPaused,
  'paths': ?paths,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RumCreateRuleRequest copyWith({String Function()? host, bool Function()? inclusive, bool Function()? isPaused, List<String> Function()? paths, }) { return RumCreateRuleRequest(
  host: host != null ? host() : this.host,
  inclusive: inclusive != null ? inclusive() : this.inclusive,
  isPaused: isPaused != null ? isPaused() : this.isPaused,
  paths: paths != null ? paths() : this.paths,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumCreateRuleRequest &&
          host == other.host &&
          inclusive == other.inclusive &&
          isPaused == other.isPaused &&
          listEquals(paths, other.paths); } 
@override int get hashCode { return Object.hash(host, inclusive, isPaused, Object.hashAll(paths ?? const [])); } 
@override String toString() { return 'RumCreateRuleRequest(host: $host, inclusive: $inclusive, isPaused: $isPaused, paths: $paths)'; } 
 }

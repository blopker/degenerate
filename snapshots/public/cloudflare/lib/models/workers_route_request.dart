// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersRouteRequest {const WorkersRouteRequest({required this.pattern, this.script, });

factory WorkersRouteRequest.fromJson(Map<String, dynamic> json) {return WorkersRouteRequest(
  pattern: json['pattern'] as String,
  script: json['script'] as String?,
);}

/// Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
final String pattern;

/// Name of the script to run if the route matches.
final String? script;

Map<String, dynamic> toJson() {return {
  'pattern': pattern,
  'script': ?script,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('pattern') && json['pattern'] is String;}
WorkersRouteRequest copyWith({String? pattern, String? Function()? script, }) {return WorkersRouteRequest(
  pattern: pattern ?? this.pattern,
  script: script != null ? script() : this.script,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersRouteRequest &&
          pattern == other.pattern &&
          script == other.script;}
@override int get hashCode {return Object.hash(pattern, script);}
@override String toString() {return 'WorkersRouteRequest(pattern: $pattern, script: $script)';}
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Query {const Query({this.maxTime = const Omittable.absent(), this.minTime = const Omittable.absent(), this.scan, this.stringMatches = const Omittable.absent(), this.tag, });

factory Query.fromJson(Map<String, dynamic> json) { return Query(
  maxTime: json.containsKey('max_time') ? Omittable(json['max_time'] != null ? DateTime.parse(json['max_time'] as String) : null) : const Omittable.absent(),
  minTime: json.containsKey('min_time') ? Omittable(json['min_time'] != null ? DateTime.parse(json['min_time'] as String) : null) : const Omittable.absent(),
  scan: json['scan'] as bool?,
  stringMatches: json.containsKey('string_matches') ? Omittable(json['string_matches']) : const Omittable.absent(),
  tag: json['tag'] as String?,
); }

final Omittable<DateTime?> maxTime;

final Omittable<DateTime?> minTime;

final bool? scan;

final Omittable<dynamic> stringMatches;

final String? tag;

Map<String, dynamic> toJson() { return {
  if (maxTime.isPresent) 'max_time': maxTime.value?.toIso8601String(),
  if (minTime.isPresent) 'min_time': minTime.value?.toIso8601String(),
  'scan': ?scan,
  if (stringMatches.isPresent) 'string_matches': stringMatches.value,
  'tag': ?tag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_time', 'min_time', 'scan', 'string_matches', 'tag'}.contains(key)); } 
Query copyWith({Omittable<DateTime?>? maxTime, Omittable<DateTime?>? minTime, bool? Function()? scan, Omittable<dynamic>? stringMatches, String? Function()? tag, }) { return Query(
  maxTime: maxTime ?? this.maxTime,
  minTime: minTime ?? this.minTime,
  scan: scan != null ? scan() : this.scan,
  stringMatches: stringMatches ?? this.stringMatches,
  tag: tag != null ? tag() : this.tag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Query &&
          maxTime == other.maxTime &&
          minTime == other.minTime &&
          scan == other.scan &&
          stringMatches == other.stringMatches &&
          tag == other.tag; } 
@override int get hashCode { return Object.hash(maxTime, minTime, scan, stringMatches, tag); } 
@override String toString() { return 'Query(maxTime: $maxTime, minTime: $minTime, scan: $scan, stringMatches: $stringMatches, tag: $tag)'; } 
 }

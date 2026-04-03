// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBgpHijacksEventsResponseResultEventsTags {const RadarGetBgpHijacksEventsResponseResultEventsTags({required this.name, required this.score, });

factory RadarGetBgpHijacksEventsResponseResultEventsTags.fromJson(Map<String, dynamic> json) { return RadarGetBgpHijacksEventsResponseResultEventsTags(
  name: json['name'] as String,
  score: (json['score'] as num).toInt(),
); }

final String name;

final int score;

Map<String, dynamic> toJson() { return {
  'name': name,
  'score': score,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('score') && json['score'] is num; } 
RadarGetBgpHijacksEventsResponseResultEventsTags copyWith({String? name, int? score, }) { return RadarGetBgpHijacksEventsResponseResultEventsTags(
  name: name ?? this.name,
  score: score ?? this.score,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpHijacksEventsResponseResultEventsTags &&
          name == other.name &&
          score == other.score; } 
@override int get hashCode { return Object.hash(name, score); } 
@override String toString() { return 'RadarGetBgpHijacksEventsResponseResultEventsTags(name: $name, score: $score)'; } 
 }

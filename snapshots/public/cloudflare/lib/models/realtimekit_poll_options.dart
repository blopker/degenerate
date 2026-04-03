// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_poll_options_votes.dart';@immutable final class RealtimekitPollOptions {const RealtimekitPollOptions({required this.count, required this.text, required this.votes, });

factory RealtimekitPollOptions.fromJson(Map<String, dynamic> json) { return RealtimekitPollOptions(
  count: (json['count'] as num).toDouble(),
  text: json['text'] as String,
  votes: (json['votes'] as List<dynamic>).map((e) => RealtimekitPollOptionsVotes.fromJson(e as Map<String, dynamic>)).toList(),
); }

final double count;

/// Text of the answer option
final String text;

final List<RealtimekitPollOptionsVotes> votes;

Map<String, dynamic> toJson() { return {
  'count': count,
  'text': text,
  'votes': votes.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('votes'); } 
RealtimekitPollOptions copyWith({double? count, String? text, List<RealtimekitPollOptionsVotes>? votes, }) { return RealtimekitPollOptions(
  count: count ?? this.count,
  text: text ?? this.text,
  votes: votes ?? this.votes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPollOptions &&
          count == other.count &&
          text == other.text &&
          listEquals(votes, other.votes); } 
@override int get hashCode { return Object.hash(count, text, Object.hashAll(votes)); } 
@override String toString() { return 'RealtimekitPollOptions(count: $count, text: $text, votes: $votes)'; } 
 }

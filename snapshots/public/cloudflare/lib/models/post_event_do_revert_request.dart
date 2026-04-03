// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventDoRevertRequest {const PostEventDoRevertRequest({required this.minutesAgo});

factory PostEventDoRevertRequest.fromJson(Map<String, dynamic> json) { return PostEventDoRevertRequest(
  minutesAgo: (json['minutesAgo'] as num).toDouble(),
); }

final double minutesAgo;

Map<String, dynamic> toJson() { return {
  'minutesAgo': minutesAgo,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('minutesAgo') && json['minutesAgo'] is num; } 
PostEventDoRevertRequest copyWith({double? minutesAgo}) { return PostEventDoRevertRequest(
  minutesAgo: minutesAgo ?? this.minutesAgo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventDoRevertRequest &&
          minutesAgo == other.minutesAgo; } 
@override int get hashCode { return minutesAgo.hashCode; } 
@override String toString() { return 'PostEventDoRevertRequest(minutesAgo: $minutesAgo)'; } 
 }

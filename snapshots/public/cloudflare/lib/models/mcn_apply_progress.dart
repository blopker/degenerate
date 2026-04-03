// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class McnApplyProgress {const McnApplyProgress({required this.done, required this.total, });

factory McnApplyProgress.fromJson(Map<String, dynamic> json) { return McnApplyProgress(
  done: (json['done'] as num).toInt(),
  total: (json['total'] as num).toInt(),
); }

final int done;

final int total;

Map<String, dynamic> toJson() { return {
  'done': done,
  'total': total,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('done') && json['done'] is num &&
      json.containsKey('total') && json['total'] is num; } 
McnApplyProgress copyWith({int? done, int? total, }) { return McnApplyProgress(
  done: done ?? this.done,
  total: total ?? this.total,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnApplyProgress &&
          done == other.done &&
          total == other.total; } 
@override int get hashCode { return Object.hash(done, total); } 
@override String toString() { return 'McnApplyProgress(done: $done, total: $total)'; } 
 }

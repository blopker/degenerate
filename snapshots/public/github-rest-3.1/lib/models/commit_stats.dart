// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CommitStats {const CommitStats({this.additions, this.deletions, this.total, });

factory CommitStats.fromJson(Map<String, dynamic> json) { return CommitStats(
  additions: json['additions'] != null ? (json['additions'] as num).toInt() : null,
  deletions: json['deletions'] != null ? (json['deletions'] as num).toInt() : null,
  total: json['total'] != null ? (json['total'] as num).toInt() : null,
); }

final int? additions;

final int? deletions;

final int? total;

Map<String, dynamic> toJson() { return {
  'additions': ?additions,
  'deletions': ?deletions,
  'total': ?total,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additions', 'deletions', 'total'}.contains(key)); } 
CommitStats copyWith({int Function()? additions, int Function()? deletions, int Function()? total, }) { return CommitStats(
  additions: additions != null ? additions() : this.additions,
  deletions: deletions != null ? deletions() : this.deletions,
  total: total != null ? total() : this.total,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CommitStats &&
          additions == other.additions &&
          deletions == other.deletions &&
          total == other.total; } 
@override int get hashCode { return Object.hash(additions, deletions, total); } 
@override String toString() { return 'CommitStats(additions: $additions, deletions: $deletions, total: $total)'; } 
 }

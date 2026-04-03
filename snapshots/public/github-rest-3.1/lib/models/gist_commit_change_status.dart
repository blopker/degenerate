// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GistCommitChangeStatus {const GistCommitChangeStatus({this.total, this.additions, this.deletions, });

factory GistCommitChangeStatus.fromJson(Map<String, dynamic> json) { return GistCommitChangeStatus(
  total: json['total'] != null ? (json['total'] as num).toInt() : null,
  additions: json['additions'] != null ? (json['additions'] as num).toInt() : null,
  deletions: json['deletions'] != null ? (json['deletions'] as num).toInt() : null,
); }

final int? total;

final int? additions;

final int? deletions;

Map<String, dynamic> toJson() { return {
  'total': ?total,
  'additions': ?additions,
  'deletions': ?deletions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total', 'additions', 'deletions'}.contains(key)); } 
GistCommitChangeStatus copyWith({int Function()? total, int Function()? additions, int Function()? deletions, }) { return GistCommitChangeStatus(
  total: total != null ? total() : this.total,
  additions: additions != null ? additions() : this.additions,
  deletions: deletions != null ? deletions() : this.deletions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistCommitChangeStatus &&
          total == other.total &&
          additions == other.additions &&
          deletions == other.deletions; } 
@override int get hashCode { return Object.hash(total, additions, deletions); } 
@override String toString() { return 'GistCommitChangeStatus(total: $total, additions: $additions, deletions: $deletions)'; } 
 }

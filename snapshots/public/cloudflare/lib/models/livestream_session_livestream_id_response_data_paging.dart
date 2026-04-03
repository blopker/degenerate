// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class LivestreamSessionLivestreamIdResponseDataPaging {const LivestreamSessionLivestreamIdResponseDataPaging({this.endOffset, this.startOffset, this.totalCount, });

factory LivestreamSessionLivestreamIdResponseDataPaging.fromJson(Map<String, dynamic> json) { return LivestreamSessionLivestreamIdResponseDataPaging(
  endOffset: json['end_offset'] != null ? (json['end_offset'] as num).toInt() : null,
  startOffset: json['start_offset'] != null ? (json['start_offset'] as num).toInt() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
); }

final int? endOffset;

final int? startOffset;

final int? totalCount;

Map<String, dynamic> toJson() { return {
  'end_offset': ?endOffset,
  'start_offset': ?startOffset,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'end_offset', 'start_offset', 'total_count'}.contains(key)); } 
LivestreamSessionLivestreamIdResponseDataPaging copyWith({int Function()? endOffset, int Function()? startOffset, int Function()? totalCount, }) { return LivestreamSessionLivestreamIdResponseDataPaging(
  endOffset: endOffset != null ? endOffset() : this.endOffset,
  startOffset: startOffset != null ? startOffset() : this.startOffset,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LivestreamSessionLivestreamIdResponseDataPaging &&
          endOffset == other.endOffset &&
          startOffset == other.startOffset &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(endOffset, startOffset, totalCount); } 
@override String toString() { return 'LivestreamSessionLivestreamIdResponseDataPaging(endOffset: $endOffset, startOffset: $startOffset, totalCount: $totalCount)'; } 
 }

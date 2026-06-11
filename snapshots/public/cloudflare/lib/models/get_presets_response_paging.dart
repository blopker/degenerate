// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetPresetsResponsePaging {const GetPresetsResponsePaging({required this.endOffset, required this.startOffset, required this.totalCount, });

factory GetPresetsResponsePaging.fromJson(Map<String, dynamic> json) { return GetPresetsResponsePaging(
  endOffset: (json['end_offset'] as num).toDouble(),
  startOffset: (json['start_offset'] as num).toDouble(),
  totalCount: (json['total_count'] as num).toDouble(),
); }

final double endOffset;

final double startOffset;

final double totalCount;

Map<String, dynamic> toJson() { return {
  'end_offset': endOffset,
  'start_offset': startOffset,
  'total_count': totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end_offset') && json['end_offset'] is num &&
      json.containsKey('start_offset') && json['start_offset'] is num &&
      json.containsKey('total_count') && json['total_count'] is num; } 
GetPresetsResponsePaging copyWith({double? endOffset, double? startOffset, double? totalCount, }) { return GetPresetsResponsePaging(
  endOffset: endOffset ?? this.endOffset,
  startOffset: startOffset ?? this.startOffset,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsResponsePaging &&
          endOffset == other.endOffset &&
          startOffset == other.startOffset &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(endOffset, startOffset, totalCount); } 
@override String toString() { return 'GetPresetsResponsePaging(endOffset: $endOffset, startOffset: $startOffset, totalCount: $totalCount)'; } 
 }

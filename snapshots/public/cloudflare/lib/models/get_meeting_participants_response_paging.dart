// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetMeetingParticipantsResponsePaging {const GetMeetingParticipantsResponsePaging({required this.endOffset, required this.startOffset, required this.totalCount, });

factory GetMeetingParticipantsResponsePaging.fromJson(Map<String, dynamic> json) { return GetMeetingParticipantsResponsePaging(
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
GetMeetingParticipantsResponsePaging copyWith({double? endOffset, double? startOffset, double? totalCount, }) { return GetMeetingParticipantsResponsePaging(
  endOffset: endOffset ?? this.endOffset,
  startOffset: startOffset ?? this.startOffset,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetMeetingParticipantsResponsePaging &&
          endOffset == other.endOffset &&
          startOffset == other.startOffset &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(endOffset, startOffset, totalCount); } 
@override String toString() { return 'GetMeetingParticipantsResponsePaging(endOffset: $endOffset, startOffset: $startOffset, totalCount: $totalCount)'; } 
 }

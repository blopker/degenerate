// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostEventMoveToNewDsRequest {const PostEventMoveToNewDsRequest({required this.destDatasetId, this.eventIds, });

factory PostEventMoveToNewDsRequest.fromJson(Map<String, dynamic> json) { return PostEventMoveToNewDsRequest(
  destDatasetId: json['destDatasetId'] as String,
  eventIds: (json['eventIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final String destDatasetId;

final List<String>? eventIds;

Map<String, dynamic> toJson() { return {
  'destDatasetId': destDatasetId,
  'eventIds': ?eventIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destDatasetId') && json['destDatasetId'] is String; } 
PostEventMoveToNewDsRequest copyWith({String? destDatasetId, List<String> Function()? eventIds, }) { return PostEventMoveToNewDsRequest(
  destDatasetId: destDatasetId ?? this.destDatasetId,
  eventIds: eventIds != null ? eventIds() : this.eventIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventMoveToNewDsRequest &&
          destDatasetId == other.destDatasetId &&
          listEquals(eventIds, other.eventIds); } 
@override int get hashCode { return Object.hash(destDatasetId, Object.hashAll(eventIds ?? const [])); } 
@override String toString() { return 'PostEventMoveToNewDsRequest(destDatasetId: $destDatasetId, eventIds: $eventIds)'; } 
 }

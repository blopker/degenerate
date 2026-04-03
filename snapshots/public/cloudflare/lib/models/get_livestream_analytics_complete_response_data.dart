// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetLivestreamAnalyticsCompleteResponseData {const GetLivestreamAnalyticsCompleteResponseData({this.count, this.totalIngestSeconds, this.totalViewerSeconds, });

factory GetLivestreamAnalyticsCompleteResponseData.fromJson(Map<String, dynamic> json) { return GetLivestreamAnalyticsCompleteResponseData(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  totalIngestSeconds: json['total_ingest_seconds'] != null ? (json['total_ingest_seconds'] as num).toInt() : null,
  totalViewerSeconds: json['total_viewer_seconds'] != null ? (json['total_viewer_seconds'] as num).toInt() : null,
); }

/// Count of total livestreams.
final int? count;

/// Total time duration for which the input was given or the meeting was streamed.
final int? totalIngestSeconds;

/// Total view time for which the viewers watched the stream.
final int? totalViewerSeconds;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'total_ingest_seconds': ?totalIngestSeconds,
  'total_viewer_seconds': ?totalViewerSeconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'total_ingest_seconds', 'total_viewer_seconds'}.contains(key)); } 
GetLivestreamAnalyticsCompleteResponseData copyWith({int Function()? count, int Function()? totalIngestSeconds, int Function()? totalViewerSeconds, }) { return GetLivestreamAnalyticsCompleteResponseData(
  count: count != null ? count() : this.count,
  totalIngestSeconds: totalIngestSeconds != null ? totalIngestSeconds() : this.totalIngestSeconds,
  totalViewerSeconds: totalViewerSeconds != null ? totalViewerSeconds() : this.totalViewerSeconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetLivestreamAnalyticsCompleteResponseData &&
          count == other.count &&
          totalIngestSeconds == other.totalIngestSeconds &&
          totalViewerSeconds == other.totalViewerSeconds; } 
@override int get hashCode { return Object.hash(count, totalIngestSeconds, totalViewerSeconds); } 
@override String toString() { return 'GetLivestreamAnalyticsCompleteResponseData(count: $count, totalIngestSeconds: $totalIngestSeconds, totalViewerSeconds: $totalViewerSeconds)'; } 
 }

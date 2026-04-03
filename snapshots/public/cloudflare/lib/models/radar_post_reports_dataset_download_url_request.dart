// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarPostReportsDatasetDownloadUrlRequest {const RadarPostReportsDatasetDownloadUrlRequest({required this.datasetId});

factory RadarPostReportsDatasetDownloadUrlRequest.fromJson(Map<String, dynamic> json) { return RadarPostReportsDatasetDownloadUrlRequest(
  datasetId: (json['datasetId'] as num).toInt(),
); }

final int datasetId;

Map<String, dynamic> toJson() { return {
  'datasetId': datasetId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('datasetId') && json['datasetId'] is num; } 
RadarPostReportsDatasetDownloadUrlRequest copyWith({int? datasetId}) { return RadarPostReportsDatasetDownloadUrlRequest(
  datasetId: datasetId ?? this.datasetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarPostReportsDatasetDownloadUrlRequest &&
          datasetId == other.datasetId; } 
@override int get hashCode { return datasetId.hashCode; } 
@override String toString() { return 'RadarPostReportsDatasetDownloadUrlRequest(datasetId: $datasetId)'; } 
 }

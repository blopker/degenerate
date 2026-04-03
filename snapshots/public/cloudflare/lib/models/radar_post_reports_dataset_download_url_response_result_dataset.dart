// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarPostReportsDatasetDownloadUrlResponseResultDataset {const RadarPostReportsDatasetDownloadUrlResponseResultDataset({required this.url});

factory RadarPostReportsDatasetDownloadUrlResponseResultDataset.fromJson(Map<String, dynamic> json) { return RadarPostReportsDatasetDownloadUrlResponseResultDataset(
  url: json['url'] as String,
); }

final String url;

Map<String, dynamic> toJson() { return {
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
RadarPostReportsDatasetDownloadUrlResponseResultDataset copyWith({String? url}) { return RadarPostReportsDatasetDownloadUrlResponseResultDataset(
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarPostReportsDatasetDownloadUrlResponseResultDataset &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'RadarPostReportsDatasetDownloadUrlResponseResultDataset(url: $url)'; } 
 }

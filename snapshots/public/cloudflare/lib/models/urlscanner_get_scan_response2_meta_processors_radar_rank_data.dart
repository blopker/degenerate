// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanResponse2MetaProcessorsRadarRankData {const UrlscannerGetScanResponse2MetaProcessorsRadarRankData({required this.bucket, required this.hostname, this.rank, });

factory UrlscannerGetScanResponse2MetaProcessorsRadarRankData.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2MetaProcessorsRadarRankData(
  bucket: json['bucket'] as String,
  hostname: json['hostname'] as String,
  rank: json['rank'] != null ? (json['rank'] as num).toDouble() : null,
); }

final String bucket;

final String hostname;

final double? rank;

Map<String, dynamic> toJson() { return {
  'bucket': bucket,
  'hostname': hostname,
  'rank': ?rank,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bucket') && json['bucket'] is String &&
      json.containsKey('hostname') && json['hostname'] is String; } 
UrlscannerGetScanResponse2MetaProcessorsRadarRankData copyWith({String? bucket, String? hostname, double Function()? rank, }) { return UrlscannerGetScanResponse2MetaProcessorsRadarRankData(
  bucket: bucket ?? this.bucket,
  hostname: hostname ?? this.hostname,
  rank: rank != null ? rank() : this.rank,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2MetaProcessorsRadarRankData &&
          bucket == other.bucket &&
          hostname == other.hostname &&
          rank == other.rank; } 
@override int get hashCode { return Object.hash(bucket, hostname, rank); } 
@override String toString() { return 'UrlscannerGetScanResponse2MetaProcessorsRadarRankData(bucket: $bucket, hostname: $hostname, rank: $rank)'; } 
 }

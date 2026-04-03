// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0 {const RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0({required this.http1X, required this.http2, required this.http3, });

factory RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0(
  http1X: json['HTTP/1.x'] as String,
  http2: json['HTTP/2'] as String,
  http3: json['HTTP/3'] as String,
); }

final String http1X;

final String http2;

final String http3;

Map<String, dynamic> toJson() { return {
  'HTTP/1.x': http1X,
  'HTTP/2': http2,
  'HTTP/3': http3,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('HTTP/1.x') && json['HTTP/1.x'] is String &&
      json.containsKey('HTTP/2') && json['HTTP/2'] is String &&
      json.containsKey('HTTP/3') && json['HTTP/3'] is String; } 
RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0 copyWith({String? http1X, String? http2, String? http3, }) { return RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0(
  http1X: http1X ?? this.http1X,
  http2: http2 ?? this.http2,
  http3: http3 ?? this.http3,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0 &&
          http1X == other.http1X &&
          http2 == other.http2 &&
          http3 == other.http3; } 
@override int get hashCode { return Object.hash(http1X, http2, http3); } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByHttpVersionResponseResultSummary0(http1X: $http1X, http2: $http2, http3: $http3)'; } 
 }

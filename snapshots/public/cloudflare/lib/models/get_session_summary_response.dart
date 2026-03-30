// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_transcript_summary.dart';final class GetSessionSummaryResponse {const GetSessionSummaryResponse({this.data, this.success, });

factory GetSessionSummaryResponse.fromJson(Map<String, dynamic> json) { return GetSessionSummaryResponse(
  data: json['data'] != null ? RealtimekitTranscriptSummary.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final RealtimekitTranscriptSummary? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
GetSessionSummaryResponse copyWith({RealtimekitTranscriptSummary Function()? data, bool Function()? success, }) { return GetSessionSummaryResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSessionSummaryResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetSessionSummaryResponse(data: $data, success: $success)'; } 
 }

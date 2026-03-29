// GENERATED CODE - DO NOT MODIFY BY HAND

import 'start_livestreaming_response_data.dart';final class StartLivestreamingResponse {const StartLivestreamingResponse({this.data, this.success, });

factory StartLivestreamingResponse.fromJson(Map<String, dynamic> json) { return StartLivestreamingResponse(
  data: json['data'] != null ? StartLivestreamingResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final StartLivestreamingResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
StartLivestreamingResponse copyWith({StartLivestreamingResponseData Function()? data, bool Function()? success, }) { return StartLivestreamingResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StartLivestreamingResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'StartLivestreamingResponse(data: $data, success: $success)'; } 
 }

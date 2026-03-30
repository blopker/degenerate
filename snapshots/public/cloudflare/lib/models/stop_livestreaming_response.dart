// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stop_livestreaming_response_data.dart';final class StopLivestreamingResponse {const StopLivestreamingResponse({this.data, this.success, });

factory StopLivestreamingResponse.fromJson(Map<String, dynamic> json) { return StopLivestreamingResponse(
  data: json['data'] != null ? StopLivestreamingResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final StopLivestreamingResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
StopLivestreamingResponse copyWith({StopLivestreamingResponseData Function()? data, bool Function()? success, }) { return StopLivestreamingResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StopLivestreamingResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'StopLivestreamingResponse(data: $data, success: $success)'; } 
 }

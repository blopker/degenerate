// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_active_session.dart';@immutable final class GetActiveSessionResponse {const GetActiveSessionResponse({this.data, this.success, });

factory GetActiveSessionResponse.fromJson(Map<String, dynamic> json) { return GetActiveSessionResponse(
  data: json['data'] != null ? RealtimekitActiveSession.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final RealtimekitActiveSession? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
GetActiveSessionResponse copyWith({RealtimekitActiveSession Function()? data, bool Function()? success, }) { return GetActiveSessionResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetActiveSessionResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'GetActiveSessionResponse(data: $data, success: $success)'; } 
 }

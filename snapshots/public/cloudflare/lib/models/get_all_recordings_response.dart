// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_all_recordings_response_data.dart';import 'get_all_recordings_response_paging.dart';@immutable final class GetAllRecordingsResponse {const GetAllRecordingsResponse({required this.data, required this.paging, required this.success, });

factory GetAllRecordingsResponse.fromJson(Map<String, dynamic> json) { return GetAllRecordingsResponse(
  data: (json['data'] as List<dynamic>).map((e) => GetAllRecordingsResponseData.fromJson(e as Map<String, dynamic>)).toList(),
  paging: GetAllRecordingsResponsePaging.fromJson(json['paging'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<GetAllRecordingsResponseData> data;

final GetAllRecordingsResponsePaging paging;

final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'paging': paging.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('paging') &&
      json.containsKey('success') && json['success'] is bool; } 
GetAllRecordingsResponse copyWith({List<GetAllRecordingsResponseData>? data, GetAllRecordingsResponsePaging? paging, bool? success, }) { return GetAllRecordingsResponse(
  data: data ?? this.data,
  paging: paging ?? this.paging,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAllRecordingsResponse &&
          listEquals(data, other.data) &&
          paging == other.paging &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), paging, success); } 
@override String toString() { return 'GetAllRecordingsResponse(data: $data, paging: $paging, success: $success)'; } 
 }

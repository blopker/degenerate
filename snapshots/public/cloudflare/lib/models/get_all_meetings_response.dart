// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_all_meetings_response_paging.dart';import 'realtimekit_meeting.dart';@immutable final class GetAllMeetingsResponse {const GetAllMeetingsResponse({required this.data, required this.paging, required this.success, });

factory GetAllMeetingsResponse.fromJson(Map<String, dynamic> json) { return GetAllMeetingsResponse(
  data: (json['data'] as List<dynamic>).map((e) => RealtimekitMeeting.fromJson(e as Map<String, dynamic>)).toList(),
  paging: GetAllMeetingsResponsePaging.fromJson(json['paging'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<RealtimekitMeeting> data;

final GetAllMeetingsResponsePaging paging;

final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'paging': paging.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('paging') &&
      json.containsKey('success') && json['success'] is bool; } 
GetAllMeetingsResponse copyWith({List<RealtimekitMeeting>? data, GetAllMeetingsResponsePaging? paging, bool? success, }) { return GetAllMeetingsResponse(
  data: data ?? this.data,
  paging: paging ?? this.paging,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAllMeetingsResponse &&
          listEquals(data, other.data) &&
          paging == other.paging &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), paging, success); } 
@override String toString() { return 'GetAllMeetingsResponse(data: $data, paging: $paging, success: $success)'; } 
 }

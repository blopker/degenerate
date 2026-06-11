// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_response_paging.dart';import 'realtimekit_preset_list_item.dart';@immutable final class GetPresetsResponse {const GetPresetsResponse({required this.data, required this.paging, required this.success, });

factory GetPresetsResponse.fromJson(Map<String, dynamic> json) { return GetPresetsResponse(
  data: (json['data'] as List<dynamic>).map((e) => RealtimekitPresetListItem.fromJson(e as Map<String, dynamic>)).toList(),
  paging: GetPresetsResponsePaging.fromJson(json['paging'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<RealtimekitPresetListItem> data;

final GetPresetsResponsePaging paging;

final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'paging': paging.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('paging') &&
      json.containsKey('success') && json['success'] is bool; } 
GetPresetsResponse copyWith({List<RealtimekitPresetListItem>? data, GetPresetsResponsePaging? paging, bool? success, }) { return GetPresetsResponse(
  data: data ?? this.data,
  paging: paging ?? this.paging,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsResponse &&
          listEquals(data, other.data) &&
          paging == other.paging &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), paging, success); } 
@override String toString() { return 'GetPresetsResponse(data: $data, paging: $paging, success: $success)'; } 
 }

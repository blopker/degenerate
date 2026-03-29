// GENERATED CODE - DO NOT MODIFY BY HAND

final class RealtimekitGenericSuccessResponse {const RealtimekitGenericSuccessResponse({this.data, this.success = true, });

factory RealtimekitGenericSuccessResponse.fromJson(Map<String, dynamic> json) { return RealtimekitGenericSuccessResponse(
  data: (json['data'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

/// Data returned by the operation
final Map<String,dynamic>? data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  'data': ?data,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
RealtimekitGenericSuccessResponse copyWith({Map<String, dynamic> Function()? data, bool? success, }) { return RealtimekitGenericSuccessResponse(
  data: data != null ? data() : this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitGenericSuccessResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'RealtimekitGenericSuccessResponse(data: $data, success: $success)'; } 
 }

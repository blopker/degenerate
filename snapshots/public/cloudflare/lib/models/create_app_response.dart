// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_app_response_data.dart';@immutable final class CreateAppResponse {const CreateAppResponse({this.data, this.success, });

factory CreateAppResponse.fromJson(Map<String, dynamic> json) { return CreateAppResponse(
  data: json['data'] != null ? CreateAppResponseData.fromJson(json['data'] as Map<String, dynamic>) : null,
  success: json['success'] as bool?,
); }

final CreateAppResponseData? data;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.toJson(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'success'}.contains(key)); } 
CreateAppResponse copyWith({CreateAppResponseData Function()? data, bool Function()? success, }) { return CreateAppResponse(
  data: data != null ? data() : this.data,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAppResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'CreateAppResponse(data: $data, success: $success)'; } 
 }

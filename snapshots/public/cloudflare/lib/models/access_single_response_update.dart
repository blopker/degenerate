// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_settings_response.dart';@immutable final class AccessSingleResponseUpdate {const AccessSingleResponseUpdate({this.result});

factory AccessSingleResponseUpdate.fromJson(Map<String, dynamic> json) { return AccessSingleResponseUpdate(
  result: json['result'] != null ? AccessAppSettingsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessAppSettingsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSingleResponseUpdate copyWith({AccessAppSettingsResponse Function()? result}) { return AccessSingleResponseUpdate(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSingleResponseUpdate &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessSingleResponseUpdate(result: $result)'; } 
 }

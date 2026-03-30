// GENERATED CODE - DO NOT MODIFY BY HAND

import 'smartshield_smart_shield_settings_patch_response.dart';final class SmartshieldSingleSmartShieldPatchResponse {const SmartshieldSingleSmartShieldPatchResponse({this.result});

factory SmartshieldSingleSmartShieldPatchResponse.fromJson(Map<String, dynamic> json) { return SmartshieldSingleSmartShieldPatchResponse(
  result: json['result'] != null ? SmartshieldSmartShieldSettingsPatchResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SmartshieldSmartShieldSettingsPatchResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SmartshieldSingleSmartShieldPatchResponse copyWith({SmartshieldSmartShieldSettingsPatchResponse Function()? result}) { return SmartshieldSingleSmartShieldPatchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSingleSmartShieldPatchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SmartshieldSingleSmartShieldPatchResponse(result: $result)'; } 
 }

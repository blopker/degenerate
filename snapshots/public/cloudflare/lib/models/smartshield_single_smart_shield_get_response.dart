// GENERATED CODE - DO NOT MODIFY BY HAND

import 'smartshield_smart_shield_settings_get_response.dart';final class SmartshieldSingleSmartShieldGetResponse {const SmartshieldSingleSmartShieldGetResponse({this.result});

factory SmartshieldSingleSmartShieldGetResponse.fromJson(Map<String, dynamic> json) { return SmartshieldSingleSmartShieldGetResponse(
  result: json['result'] != null ? SmartshieldSmartShieldSettingsGetResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SmartshieldSmartShieldSettingsGetResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SmartshieldSingleSmartShieldGetResponse copyWith({SmartshieldSmartShieldSettingsGetResponse Function()? result}) { return SmartshieldSingleSmartShieldGetResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSingleSmartShieldGetResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SmartshieldSingleSmartShieldGetResponse(result: $result)'; } 
 }

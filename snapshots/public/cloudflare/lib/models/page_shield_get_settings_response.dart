// GENERATED CODE - DO NOT MODIFY BY HAND

import 'page_shield_get_zone_settings_response.dart';final class PageShieldGetSettingsResponse {const PageShieldGetSettingsResponse({this.result});

factory PageShieldGetSettingsResponse.fromJson(Map<String, dynamic> json) { return PageShieldGetSettingsResponse(
  result: json['result'] != null ? PageShieldGetZoneSettingsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final PageShieldGetZoneSettingsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PageShieldGetSettingsResponse copyWith({PageShieldGetZoneSettingsResponse Function()? result}) { return PageShieldGetSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldGetSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageShieldGetSettingsResponse(result: $result)'; } 
 }

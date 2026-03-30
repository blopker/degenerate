// GENERATED CODE - DO NOT MODIFY BY HAND

import 'put_zones_zone_id_activation_check_response_result.dart';final class PutZonesZoneIdActivationCheckResponse {const PutZonesZoneIdActivationCheckResponse({this.result});

factory PutZonesZoneIdActivationCheckResponse.fromJson(Map<String, dynamic> json) { return PutZonesZoneIdActivationCheckResponse(
  result: json['result'] != null ? PutZonesZoneIdActivationCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final PutZonesZoneIdActivationCheckResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PutZonesZoneIdActivationCheckResponse copyWith({PutZonesZoneIdActivationCheckResponseResult Function()? result}) { return PutZonesZoneIdActivationCheckResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PutZonesZoneIdActivationCheckResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PutZonesZoneIdActivationCheckResponse(result: $result)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_availabilities.dart';final class ObservatoryAvailabilitiesResponse {const ObservatoryAvailabilitiesResponse({this.result});

factory ObservatoryAvailabilitiesResponse.fromJson(Map<String, dynamic> json) { return ObservatoryAvailabilitiesResponse(
  result: json['result'] != null ? ObservatoryAvailabilities.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ObservatoryAvailabilities? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ObservatoryAvailabilitiesResponse copyWith({ObservatoryAvailabilities Function()? result}) { return ObservatoryAvailabilitiesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryAvailabilitiesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ObservatoryAvailabilitiesResponse(result: $result)'; } 
 }

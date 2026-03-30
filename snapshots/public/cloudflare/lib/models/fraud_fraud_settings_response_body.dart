// GENERATED CODE - DO NOT MODIFY BY HAND

import 'fraud_fraud_settings.dart';final class FraudFraudSettingsResponseBody {const FraudFraudSettingsResponseBody({this.result});

factory FraudFraudSettingsResponseBody.fromJson(Map<String, dynamic> json) { return FraudFraudSettingsResponseBody(
  result: json['result'] != null ? FraudFraudSettings.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final FraudFraudSettings? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FraudFraudSettingsResponseBody copyWith({FraudFraudSettings Function()? result}) { return FraudFraudSettingsResponseBody(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FraudFraudSettingsResponseBody &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FraudFraudSettingsResponseBody(result: $result)'; } 
 }

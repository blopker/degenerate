// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_anomaly_package.dart';final class WafPackagesUpdateAWafPackageResponse {const WafPackagesUpdateAWafPackageResponse({this.result});

factory WafPackagesUpdateAWafPackageResponse.fromJson(Map<String, dynamic> json) { return WafPackagesUpdateAWafPackageResponse(
  result: json['result'] != null ? FirewallAnomalyPackage.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final FirewallAnomalyPackage? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafPackagesUpdateAWafPackageResponse copyWith({FirewallAnomalyPackage Function()? result}) { return WafPackagesUpdateAWafPackageResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafPackagesUpdateAWafPackageResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafPackagesUpdateAWafPackageResponse(result: $result)'; } 
 }

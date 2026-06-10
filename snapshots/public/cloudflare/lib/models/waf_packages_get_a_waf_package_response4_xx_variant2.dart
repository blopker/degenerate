// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WafPackagesGetAWafPackageResponse4XxVariant2 {const WafPackagesGetAWafPackageResponse4XxVariant2({this.result});

factory WafPackagesGetAWafPackageResponse4XxVariant2.fromJson(Map<String, dynamic> json) { return WafPackagesGetAWafPackageResponse4XxVariant2(
  result: json['result'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafPackagesGetAWafPackageResponse4XxVariant2 copyWith({Map<String, dynamic> Function()? result}) { return WafPackagesGetAWafPackageResponse4XxVariant2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafPackagesGetAWafPackageResponse4XxVariant2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafPackagesGetAWafPackageResponse4XxVariant2(result: $result)'; } 
 }

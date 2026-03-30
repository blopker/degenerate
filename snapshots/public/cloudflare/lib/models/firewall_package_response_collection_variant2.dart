// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_anomaly_package.dart';import 'firewall_package.dart';import 'firewall_package_definition.dart';final class FirewallPackageResponseCollectionVariant2 {const FirewallPackageResponseCollectionVariant2({this.result});

factory FirewallPackageResponseCollectionVariant2.fromJson(Map<String, dynamic> json) { return FirewallPackageResponseCollectionVariant2(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => FirewallPackageDefinition.fromJson(v as Map<String, dynamic>), fromB: (v) => FirewallAnomalyPackage.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<FirewallPackage>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallPackageResponseCollectionVariant2 copyWith({List<FirewallPackage> Function()? result}) { return FirewallPackageResponseCollectionVariant2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallPackageResponseCollectionVariant2 &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'FirewallPackageResponseCollectionVariant2(result: $result)'; } 
 }

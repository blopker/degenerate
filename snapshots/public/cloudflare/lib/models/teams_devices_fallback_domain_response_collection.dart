// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_fallback_domain.dart';@immutable final class TeamsDevicesFallbackDomainResponseCollection {const TeamsDevicesFallbackDomainResponseCollection({this.result});

factory TeamsDevicesFallbackDomainResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesFallbackDomainResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesFallbackDomain.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesFallbackDomain>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesFallbackDomainResponseCollection copyWith({List<TeamsDevicesFallbackDomain> Function()? result}) { return TeamsDevicesFallbackDomainResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesFallbackDomainResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesFallbackDomainResponseCollection(result: $result)'; } 
 }

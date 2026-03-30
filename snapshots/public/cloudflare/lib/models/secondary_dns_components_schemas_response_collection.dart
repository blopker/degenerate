// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_acl.dart';final class SecondaryDnsComponentsSchemasResponseCollection {const SecondaryDnsComponentsSchemasResponseCollection({this.result});

factory SecondaryDnsComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return SecondaryDnsComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => SecondaryDnsAcl.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecondaryDnsAcl>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsComponentsSchemasResponseCollection copyWith({List<SecondaryDnsAcl> Function()? result}) { return SecondaryDnsComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'SecondaryDnsComponentsSchemasResponseCollection(result: $result)'; } 
 }

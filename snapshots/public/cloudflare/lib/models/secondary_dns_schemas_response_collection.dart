// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_peer.dart';@immutable final class SecondaryDnsSchemasResponseCollection {const SecondaryDnsSchemasResponseCollection({this.result});

factory SecondaryDnsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return SecondaryDnsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => SecondaryDnsPeer.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecondaryDnsPeer>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsSchemasResponseCollection copyWith({List<SecondaryDnsPeer> Function()? result}) { return SecondaryDnsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'SecondaryDnsSchemasResponseCollection(result: $result)'; } 
 }

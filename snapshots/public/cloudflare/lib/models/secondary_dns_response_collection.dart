// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_tsig.dart';final class SecondaryDnsResponseCollection {const SecondaryDnsResponseCollection({this.result});

factory SecondaryDnsResponseCollection.fromJson(Map<String, dynamic> json) { return SecondaryDnsResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => SecondaryDnsTsig.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecondaryDnsTsig>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsResponseCollection copyWith({List<SecondaryDnsTsig> Function()? result}) { return SecondaryDnsResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'SecondaryDnsResponseCollection(result: $result)'; } 
 }

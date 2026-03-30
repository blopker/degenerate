// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_web3_hostname.dart';final class Web3CollectionResponse {const Web3CollectionResponse({this.result});

factory Web3CollectionResponse.fromJson(Map<String, dynamic> json) { return Web3CollectionResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => Web3Web3Hostname.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<Web3Web3Hostname>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
Web3CollectionResponse copyWith({List<Web3Web3Hostname> Function()? result}) { return Web3CollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3CollectionResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'Web3CollectionResponse(result: $result)'; } 
 }

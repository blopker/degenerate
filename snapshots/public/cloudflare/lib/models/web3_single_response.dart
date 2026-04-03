// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_web3_hostname.dart';@immutable final class Web3SingleResponse {const Web3SingleResponse({this.result});

factory Web3SingleResponse.fromJson(Map<String, dynamic> json) { return Web3SingleResponse(
  result: json['result'] != null ? Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Web3Web3Hostname? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
Web3SingleResponse copyWith({Web3Web3Hostname Function()? result}) { return Web3SingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3SingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'Web3SingleResponse(result: $result)'; } 
 }

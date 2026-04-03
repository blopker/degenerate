// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_magic_wan_address_space.dart';@immutable final class McnUpdateMagicWanAddressSpaceResponse {const McnUpdateMagicWanAddressSpaceResponse({this.result});

factory McnUpdateMagicWanAddressSpaceResponse.fromJson(Map<String, dynamic> json) { return McnUpdateMagicWanAddressSpaceResponse(
  result: json['result'] != null ? McnMagicWanAddressSpace.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnMagicWanAddressSpace? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnUpdateMagicWanAddressSpaceResponse copyWith({McnMagicWanAddressSpace Function()? result}) { return McnUpdateMagicWanAddressSpaceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnUpdateMagicWanAddressSpaceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnUpdateMagicWanAddressSpaceResponse(result: $result)'; } 
 }

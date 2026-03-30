// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_magic_wan_address_space.dart';final class McnGetMagicWanAddressSpaceResponse {const McnGetMagicWanAddressSpaceResponse({this.result});

factory McnGetMagicWanAddressSpaceResponse.fromJson(Map<String, dynamic> json) { return McnGetMagicWanAddressSpaceResponse(
  result: json['result'] != null ? McnMagicWanAddressSpace.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnMagicWanAddressSpace? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnGetMagicWanAddressSpaceResponse copyWith({McnMagicWanAddressSpace Function()? result}) { return McnGetMagicWanAddressSpaceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnGetMagicWanAddressSpaceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnGetMagicWanAddressSpaceResponse(result: $result)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'addressing_ipam_bgp_prefixes.dart';final class AddressingSingleResponseBgp {const AddressingSingleResponseBgp({this.result});

factory AddressingSingleResponseBgp.fromJson(Map<String, dynamic> json) { return AddressingSingleResponseBgp(
  result: json['result'] != null ? AddressingIpamBgpPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AddressingIpamBgpPrefixes? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingSingleResponseBgp copyWith({AddressingIpamBgpPrefixes Function()? result}) { return AddressingSingleResponseBgp(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingSingleResponseBgp &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AddressingSingleResponseBgp(result: $result)'; } 
 }

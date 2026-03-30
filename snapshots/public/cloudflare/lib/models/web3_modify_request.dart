// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web3_description.dart';import 'web3_dnslink.dart';final class Web3ModifyRequest {const Web3ModifyRequest({this.description, this.dnslink, });

factory Web3ModifyRequest.fromJson(Map<String, dynamic> json) { return Web3ModifyRequest(
  description: json['description'] != null ? Web3Description.fromJson(json['description'] as String) : null,
  dnslink: json['dnslink'] != null ? Web3Dnslink.fromJson(json['dnslink'] as String) : null,
); }

/// Specify an optional description of the hostname.
final Web3Description? description;

/// Specify the DNSLink value used if the target is ipfs.
final Web3Dnslink? dnslink;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (dnslink != null) 'dnslink': dnslink?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'dnslink'}.contains(key)); } 
Web3ModifyRequest copyWith({Web3Description Function()? description, Web3Dnslink Function()? dnslink, }) { return Web3ModifyRequest(
  description: description != null ? description() : this.description,
  dnslink: dnslink != null ? dnslink() : this.dnslink,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ModifyRequest &&
          description == other.description &&
          dnslink == other.dnslink; } 
@override int get hashCode { return Object.hash(description, dnslink); } 
@override String toString() { return 'Web3ModifyRequest(description: $description, dnslink: $dnslink)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateSipIpAccessControlListMappingRequest {const CreateSipIpAccessControlListMappingRequest({required this.ipAccessControlListSid});

factory CreateSipIpAccessControlListMappingRequest.fromJson(Map<String, dynamic> json) { return CreateSipIpAccessControlListMappingRequest(
  ipAccessControlListSid: json['IpAccessControlListSid'] as String,
); }

/// The unique id of the IP access control list to map to the SIP domain.
final String ipAccessControlListSid;

Map<String, dynamic> toJson() { return {
  'IpAccessControlListSid': ipAccessControlListSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('IpAccessControlListSid') && json['IpAccessControlListSid'] is String; } 
CreateSipIpAccessControlListMappingRequest copyWith({String? ipAccessControlListSid}) { return CreateSipIpAccessControlListMappingRequest(
  ipAccessControlListSid: ipAccessControlListSid ?? this.ipAccessControlListSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipIpAccessControlListMappingRequest &&
          ipAccessControlListSid == other.ipAccessControlListSid; } 
@override int get hashCode { return ipAccessControlListSid.hashCode; } 
@override String toString() { return 'CreateSipIpAccessControlListMappingRequest(ipAccessControlListSid: $ipAccessControlListSid)'; } 
 }

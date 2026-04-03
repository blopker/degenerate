// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateSipAuthCallsIpAccessControlListMappingRequest {const CreateSipAuthCallsIpAccessControlListMappingRequest({required this.ipAccessControlListSid});

factory CreateSipAuthCallsIpAccessControlListMappingRequest.fromJson(Map<String, dynamic> json) { return CreateSipAuthCallsIpAccessControlListMappingRequest(
  ipAccessControlListSid: json['IpAccessControlListSid'] as String,
); }

/// The SID of the IpAccessControlList resource to map to the SIP domain.
final String ipAccessControlListSid;

Map<String, dynamic> toJson() { return {
  'IpAccessControlListSid': ipAccessControlListSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('IpAccessControlListSid') && json['IpAccessControlListSid'] is String; } 
CreateSipAuthCallsIpAccessControlListMappingRequest copyWith({String? ipAccessControlListSid}) { return CreateSipAuthCallsIpAccessControlListMappingRequest(
  ipAccessControlListSid: ipAccessControlListSid ?? this.ipAccessControlListSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipAuthCallsIpAccessControlListMappingRequest &&
          ipAccessControlListSid == other.ipAccessControlListSid; } 
@override int get hashCode { return ipAccessControlListSid.hashCode; } 
@override String toString() { return 'CreateSipAuthCallsIpAccessControlListMappingRequest(ipAccessControlListSid: $ipAccessControlListSid)'; } 
 }

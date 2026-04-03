// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateSipCredentialListMappingRequest {const CreateSipCredentialListMappingRequest({required this.credentialListSid});

factory CreateSipCredentialListMappingRequest.fromJson(Map<String, dynamic> json) { return CreateSipCredentialListMappingRequest(
  credentialListSid: json['CredentialListSid'] as String,
); }

/// A 34 character string that uniquely identifies the CredentialList resource to map to the SIP domain.
final String credentialListSid;

Map<String, dynamic> toJson() { return {
  'CredentialListSid': credentialListSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('CredentialListSid') && json['CredentialListSid'] is String; } 
CreateSipCredentialListMappingRequest copyWith({String? credentialListSid}) { return CreateSipCredentialListMappingRequest(
  credentialListSid: credentialListSid ?? this.credentialListSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipCredentialListMappingRequest &&
          credentialListSid == other.credentialListSid; } 
@override int get hashCode { return credentialListSid.hashCode; } 
@override String toString() { return 'CreateSipCredentialListMappingRequest(credentialListSid: $credentialListSid)'; } 
 }

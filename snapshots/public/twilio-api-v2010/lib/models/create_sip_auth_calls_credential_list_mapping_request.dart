// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateSipAuthCallsCredentialListMappingRequest {const CreateSipAuthCallsCredentialListMappingRequest({required this.credentialListSid});

factory CreateSipAuthCallsCredentialListMappingRequest.fromJson(Map<String, dynamic> json) { return CreateSipAuthCallsCredentialListMappingRequest(
  credentialListSid: json['CredentialListSid'] as String,
); }

/// The SID of the CredentialList resource to map to the SIP domain.
final String credentialListSid;

Map<String, dynamic> toJson() { return {
  'CredentialListSid': credentialListSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('CredentialListSid') && json['CredentialListSid'] is String; } 
CreateSipAuthCallsCredentialListMappingRequest copyWith({String? credentialListSid}) { return CreateSipAuthCallsCredentialListMappingRequest(
  credentialListSid: credentialListSid ?? this.credentialListSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipAuthCallsCredentialListMappingRequest &&
          credentialListSid == other.credentialListSid; } 
@override int get hashCode { return credentialListSid.hashCode; } 
@override String toString() { return 'CreateSipAuthCallsCredentialListMappingRequest(credentialListSid: $credentialListSid)'; } 
 }

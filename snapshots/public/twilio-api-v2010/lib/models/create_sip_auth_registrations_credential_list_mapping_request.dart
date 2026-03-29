// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateSipAuthRegistrationsCredentialListMappingRequest {const CreateSipAuthRegistrationsCredentialListMappingRequest({required this.credentialListSid});

factory CreateSipAuthRegistrationsCredentialListMappingRequest.fromJson(Map<String, dynamic> json) { return CreateSipAuthRegistrationsCredentialListMappingRequest(
  credentialListSid: json['CredentialListSid'] as String,
); }

/// The SID of the CredentialList resource to map to the SIP domain.
final String credentialListSid;

Map<String, dynamic> toJson() { return {
  'CredentialListSid': credentialListSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('CredentialListSid') && json['CredentialListSid'] is String; } 
CreateSipAuthRegistrationsCredentialListMappingRequest copyWith({String? credentialListSid}) { return CreateSipAuthRegistrationsCredentialListMappingRequest(
  credentialListSid: credentialListSid ?? this.credentialListSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipAuthRegistrationsCredentialListMappingRequest &&
          credentialListSid == other.credentialListSid; } 
@override int get hashCode { return credentialListSid.hashCode; } 
@override String toString() { return 'CreateSipAuthRegistrationsCredentialListMappingRequest(credentialListSid: $credentialListSid)'; } 
 }

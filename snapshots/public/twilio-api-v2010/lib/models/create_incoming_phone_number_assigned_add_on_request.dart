// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateIncomingPhoneNumberAssignedAddOnRequest {const CreateIncomingPhoneNumberAssignedAddOnRequest({required this.installedAddOnSid});

factory CreateIncomingPhoneNumberAssignedAddOnRequest.fromJson(Map<String, dynamic> json) { return CreateIncomingPhoneNumberAssignedAddOnRequest(
  installedAddOnSid: json['InstalledAddOnSid'] as String,
); }

/// The SID that identifies the Add-on installation.
final String installedAddOnSid;

Map<String, dynamic> toJson() { return {
  'InstalledAddOnSid': installedAddOnSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('InstalledAddOnSid') && json['InstalledAddOnSid'] is String; } 
CreateIncomingPhoneNumberAssignedAddOnRequest copyWith({String? installedAddOnSid}) { return CreateIncomingPhoneNumberAssignedAddOnRequest(
  installedAddOnSid: installedAddOnSid ?? this.installedAddOnSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateIncomingPhoneNumberAssignedAddOnRequest &&
          installedAddOnSid == other.installedAddOnSid; } 
@override int get hashCode { return installedAddOnSid.hashCode; } 
@override String toString() { return 'CreateIncomingPhoneNumberAssignedAddOnRequest(installedAddOnSid: $installedAddOnSid)'; } 
 }

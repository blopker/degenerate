// GENERATED CODE - DO NOT MODIFY BY HAND

/// Account settings
final class IamAccountSettings {const IamAccountSettings({this.abuseContactEmail, this.enforceTwofactor = false, });

factory IamAccountSettings.fromJson(Map<String, dynamic> json) { return IamAccountSettings(
  abuseContactEmail: json['abuse_contact_email'] as String?,
  enforceTwofactor: json.containsKey('enforce_twofactor') ? json['enforce_twofactor'] as bool : false,
); }

/// Sets an abuse contact email to notify for abuse reports.
final String? abuseContactEmail;

/// Indicates whether membership in this account requires that
/// Two-Factor Authentication is enabled
final bool enforceTwofactor;

Map<String, dynamic> toJson() { return {
  'abuse_contact_email': ?abuseContactEmail,
  'enforce_twofactor': enforceTwofactor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'abuse_contact_email', 'enforce_twofactor'}.contains(key)); } 
IamAccountSettings copyWith({String Function()? abuseContactEmail, bool Function()? enforceTwofactor, }) { return IamAccountSettings(
  abuseContactEmail: abuseContactEmail != null ? abuseContactEmail() : this.abuseContactEmail,
  enforceTwofactor: enforceTwofactor != null ? enforceTwofactor() : this.enforceTwofactor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamAccountSettings &&
          abuseContactEmail == other.abuseContactEmail &&
          enforceTwofactor == other.enforceTwofactor; } 
@override int get hashCode { return Object.hash(abuseContactEmail, enforceTwofactor); } 
@override String toString() { return 'IamAccountSettings(abuseContactEmail: $abuseContactEmail, enforceTwofactor: $enforceTwofactor)'; } 
 }

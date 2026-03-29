// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountSettings {const AccountSettings({required this.abuseContactEmail, required this.accessApprovalExpiry, required this.apiAccessEnabled, required this.defaultNameservers, required this.enforceTwofactor, required this.useAccountCustomNsByDefault, });

factory AccountSettings.fromJson(Map<String, dynamic> json) { return AccountSettings(
  abuseContactEmail: json['abuse_contact_email'] as String?,
  accessApprovalExpiry: json['access_approval_expiry'] != null ? DateTime.parse(json['access_approval_expiry'] as String) : null,
  apiAccessEnabled: json['api_access_enabled'] as bool?,
  defaultNameservers: json['default_nameservers'] as String?,
  enforceTwofactor: json['enforce_twofactor'] as bool?,
  useAccountCustomNsByDefault: json['use_account_custom_ns_by_default'] as bool?,
); }

final String? abuseContactEmail;

final DateTime? accessApprovalExpiry;

final bool? apiAccessEnabled;

/// Use [DNS Settings](https://developers.cloudflare.com/api/operations/dns-settings-for-an-account-list-dns-settings) instead. Deprecated.
final String? defaultNameservers;

final bool? enforceTwofactor;

/// Use [DNS Settings](https://developers.cloudflare.com/api/operations/dns-settings-for-an-account-list-dns-settings) instead. Deprecated.
final bool? useAccountCustomNsByDefault;

Map<String, dynamic> toJson() { return {
  'abuse_contact_email': ?abuseContactEmail,
  if (accessApprovalExpiry != null) 'access_approval_expiry': accessApprovalExpiry?.toIso8601String(),
  'api_access_enabled': ?apiAccessEnabled,
  'default_nameservers': ?defaultNameservers,
  'enforce_twofactor': ?enforceTwofactor,
  'use_account_custom_ns_by_default': ?useAccountCustomNsByDefault,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('abuse_contact_email') && json['abuse_contact_email'] is String &&
      json.containsKey('access_approval_expiry') && json['access_approval_expiry'] is String &&
      json.containsKey('api_access_enabled') && json['api_access_enabled'] is bool &&
      json.containsKey('default_nameservers') && json['default_nameservers'] is String &&
      json.containsKey('enforce_twofactor') && json['enforce_twofactor'] is bool &&
      json.containsKey('use_account_custom_ns_by_default') && json['use_account_custom_ns_by_default'] is bool; } 
AccountSettings copyWith({String? Function()? abuseContactEmail, DateTime? Function()? accessApprovalExpiry, bool? Function()? apiAccessEnabled, String? Function()? defaultNameservers, bool? Function()? enforceTwofactor, bool? Function()? useAccountCustomNsByDefault, }) { return AccountSettings(
  abuseContactEmail: abuseContactEmail != null ? abuseContactEmail() : this.abuseContactEmail,
  accessApprovalExpiry: accessApprovalExpiry != null ? accessApprovalExpiry() : this.accessApprovalExpiry,
  apiAccessEnabled: apiAccessEnabled != null ? apiAccessEnabled() : this.apiAccessEnabled,
  defaultNameservers: defaultNameservers != null ? defaultNameservers() : this.defaultNameservers,
  enforceTwofactor: enforceTwofactor != null ? enforceTwofactor() : this.enforceTwofactor,
  useAccountCustomNsByDefault: useAccountCustomNsByDefault != null ? useAccountCustomNsByDefault() : this.useAccountCustomNsByDefault,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSettings &&
          abuseContactEmail == other.abuseContactEmail &&
          accessApprovalExpiry == other.accessApprovalExpiry &&
          apiAccessEnabled == other.apiAccessEnabled &&
          defaultNameservers == other.defaultNameservers &&
          enforceTwofactor == other.enforceTwofactor &&
          useAccountCustomNsByDefault == other.useAccountCustomNsByDefault; } 
@override int get hashCode { return Object.hash(abuseContactEmail, accessApprovalExpiry, apiAccessEnabled, defaultNameservers, enforceTwofactor, useAccountCustomNsByDefault); } 
@override String toString() { return 'AccountSettings(abuseContactEmail: $abuseContactEmail, accessApprovalExpiry: $accessApprovalExpiry, apiAccessEnabled: $apiAccessEnabled, defaultNameservers: $defaultNameservers, enforceTwofactor: $enforceTwofactor, useAccountCustomNsByDefault: $useAccountCustomNsByDefault)'; } 
 }

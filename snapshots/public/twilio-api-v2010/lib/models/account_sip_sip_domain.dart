// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountSipSipDomainVoiceFallbackMethod {const AccountSipSipDomainVoiceFallbackMethod._(this.value);

factory AccountSipSipDomainVoiceFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountSipSipDomainVoiceFallbackMethod._(json),
}; }

static const AccountSipSipDomainVoiceFallbackMethod $get = AccountSipSipDomainVoiceFallbackMethod._('GET');

static const AccountSipSipDomainVoiceFallbackMethod post = AccountSipSipDomainVoiceFallbackMethod._('POST');

static const List<AccountSipSipDomainVoiceFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountSipSipDomainVoiceFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountSipSipDomainVoiceFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
@immutable final class AccountSipSipDomainVoiceMethod {const AccountSipSipDomainVoiceMethod._(this.value);

factory AccountSipSipDomainVoiceMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountSipSipDomainVoiceMethod._(json),
}; }

static const AccountSipSipDomainVoiceMethod $get = AccountSipSipDomainVoiceMethod._('GET');

static const AccountSipSipDomainVoiceMethod post = AccountSipSipDomainVoiceMethod._('POST');

static const List<AccountSipSipDomainVoiceMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountSipSipDomainVoiceMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountSipSipDomainVoiceMethod($value)'; } 
 }
/// The HTTP method we use to call `voice_status_callback_url`. Either `GET` or `POST`.
@immutable final class AccountSipSipDomainVoiceStatusCallbackMethod {const AccountSipSipDomainVoiceStatusCallbackMethod._(this.value);

factory AccountSipSipDomainVoiceStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountSipSipDomainVoiceStatusCallbackMethod._(json),
}; }

static const AccountSipSipDomainVoiceStatusCallbackMethod $get = AccountSipSipDomainVoiceStatusCallbackMethod._('GET');

static const AccountSipSipDomainVoiceStatusCallbackMethod post = AccountSipSipDomainVoiceStatusCallbackMethod._('POST');

static const List<AccountSipSipDomainVoiceStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountSipSipDomainVoiceStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountSipSipDomainVoiceStatusCallbackMethod($value)'; } 
 }
@immutable final class AccountSipSipDomain {const AccountSipSipDomain({this.accountSid = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.authType = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.domainName = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.sid = const Omittable.absent(), this.uri = const Omittable.absent(), this.voiceFallbackMethod = const Omittable.absent(), this.voiceFallbackUrl = const Omittable.absent(), this.voiceMethod = const Omittable.absent(), this.voiceStatusCallbackMethod = const Omittable.absent(), this.voiceStatusCallbackUrl = const Omittable.absent(), this.voiceUrl = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), this.sipRegistration = const Omittable.absent(), this.emergencyCallingEnabled = const Omittable.absent(), this.secure = const Omittable.absent(), this.byocTrunkSid = const Omittable.absent(), this.emergencyCallerSid = const Omittable.absent(), });

factory AccountSipSipDomain.fromJson(Map<String, dynamic> json) { return AccountSipSipDomain(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  authType: json.containsKey('auth_type') ? Omittable(json['auth_type'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  domainName: json.containsKey('domain_name') ? Omittable(json['domain_name'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  voiceFallbackMethod: json.containsKey('voice_fallback_method') ? Omittable(json['voice_fallback_method'] != null ? AccountSipSipDomainVoiceFallbackMethod.fromJson(json['voice_fallback_method'] as String) : null) : const Omittable.absent(),
  voiceFallbackUrl: json.containsKey('voice_fallback_url') ? Omittable(json['voice_fallback_url'] != null ? Uri.parse(json['voice_fallback_url'] as String) : null) : const Omittable.absent(),
  voiceMethod: json.containsKey('voice_method') ? Omittable(json['voice_method'] != null ? AccountSipSipDomainVoiceMethod.fromJson(json['voice_method'] as String) : null) : const Omittable.absent(),
  voiceStatusCallbackMethod: json.containsKey('voice_status_callback_method') ? Omittable(json['voice_status_callback_method'] != null ? AccountSipSipDomainVoiceStatusCallbackMethod.fromJson(json['voice_status_callback_method'] as String) : null) : const Omittable.absent(),
  voiceStatusCallbackUrl: json.containsKey('voice_status_callback_url') ? Omittable(json['voice_status_callback_url'] != null ? Uri.parse(json['voice_status_callback_url'] as String) : null) : const Omittable.absent(),
  voiceUrl: json.containsKey('voice_url') ? Omittable(json['voice_url'] != null ? Uri.parse(json['voice_url'] as String) : null) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
  sipRegistration: json.containsKey('sip_registration') ? Omittable(json['sip_registration'] as bool?) : const Omittable.absent(),
  emergencyCallingEnabled: json.containsKey('emergency_calling_enabled') ? Omittable(json['emergency_calling_enabled'] as bool?) : const Omittable.absent(),
  secure: json.containsKey('secure') ? Omittable(json['secure'] as bool?) : const Omittable.absent(),
  byocTrunkSid: json.containsKey('byoc_trunk_sid') ? Omittable(json['byoc_trunk_sid'] as String?) : const Omittable.absent(),
  emergencyCallerSid: json.containsKey('emergency_caller_sid') ? Omittable(json['emergency_caller_sid'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the SipDomain resource.
final Omittable<String?> accountSid;

/// The API version used to process the call.
final Omittable<String?> apiVersion;

/// The types of authentication you have mapped to your domain. Can be: `IP_ACL` and `CREDENTIAL_LIST`. If you have both defined for your domain, both will be returned in a comma delimited string. If `auth_type` is not defined, the domain will not be able to receive any traffic.
final Omittable<String?> authType;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The unique address you reserve on Twilio to which you route your SIP traffic. Domain names can contain letters, digits, and "-" and must end with `sip.twilio.com`.
final Omittable<String?> domainName;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The unique string that that we created to identify the SipDomain resource.
final Omittable<String?> sid;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
final Omittable<AccountSipSipDomainVoiceFallbackMethod?> voiceFallbackMethod;

/// The URL that we call when an error occurs while retrieving or executing the TwiML requested from `voice_url`.
final Omittable<Uri?> voiceFallbackUrl;

/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
final Omittable<AccountSipSipDomainVoiceMethod?> voiceMethod;

/// The HTTP method we use to call `voice_status_callback_url`. Either `GET` or `POST`.
final Omittable<AccountSipSipDomainVoiceStatusCallbackMethod?> voiceStatusCallbackMethod;

/// The URL that we call to pass status parameters (such as call ended) to your application.
final Omittable<Uri?> voiceStatusCallbackUrl;

/// The URL we call using the `voice_method` when the domain receives a call.
final Omittable<Uri?> voiceUrl;

/// A list of mapping resources associated with the SIP Domain resource identified by their relative URIs.
final Omittable<Map<String,dynamic>?> subresourceUris;

/// Whether to allow SIP Endpoints to register with the domain to receive calls.
final Omittable<bool?> sipRegistration;

/// Whether emergency calling is enabled for the domain. If enabled, allows emergency calls on the domain from phone numbers with validated addresses.
final Omittable<bool?> emergencyCallingEnabled;

/// Whether secure SIP is enabled for the domain. If enabled, TLS will be enforced and SRTP will be negotiated on all incoming calls to this sip domain.
final Omittable<bool?> secure;

/// The SID of the BYOC Trunk(Bring Your Own Carrier) resource that the Sip Domain will be associated with.
final Omittable<String?> byocTrunkSid;

/// Whether an emergency caller sid is configured for the domain. If present, this phone number will be used as the callback for the emergency call.
final Omittable<String?> emergencyCallerSid;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (authType.isPresent) 'auth_type': authType.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (domainName.isPresent) 'domain_name': domainName.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (sid.isPresent) 'sid': sid.value,
  if (uri.isPresent) 'uri': uri.value,
  if (voiceFallbackMethod.isPresent) 'voice_fallback_method': voiceFallbackMethod.value?.toJson(),
  if (voiceFallbackUrl.isPresent) 'voice_fallback_url': voiceFallbackUrl.value?.toString(),
  if (voiceMethod.isPresent) 'voice_method': voiceMethod.value?.toJson(),
  if (voiceStatusCallbackMethod.isPresent) 'voice_status_callback_method': voiceStatusCallbackMethod.value?.toJson(),
  if (voiceStatusCallbackUrl.isPresent) 'voice_status_callback_url': voiceStatusCallbackUrl.value?.toString(),
  if (voiceUrl.isPresent) 'voice_url': voiceUrl.value?.toString(),
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
  if (sipRegistration.isPresent) 'sip_registration': sipRegistration.value,
  if (emergencyCallingEnabled.isPresent) 'emergency_calling_enabled': emergencyCallingEnabled.value,
  if (secure.isPresent) 'secure': secure.value,
  if (byocTrunkSid.isPresent) 'byoc_trunk_sid': byocTrunkSid.value,
  if (emergencyCallerSid.isPresent) 'emergency_caller_sid': emergencyCallerSid.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'auth_type', 'date_created', 'date_updated', 'domain_name', 'friendly_name', 'sid', 'uri', 'voice_fallback_method', 'voice_fallback_url', 'voice_method', 'voice_status_callback_method', 'voice_status_callback_url', 'voice_url', 'subresource_uris', 'sip_registration', 'emergency_calling_enabled', 'secure', 'byoc_trunk_sid', 'emergency_caller_sid'}.contains(key)); } 
AccountSipSipDomain copyWith({Omittable<String?>? accountSid, Omittable<String?>? apiVersion, Omittable<String?>? authType, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? domainName, Omittable<String?>? friendlyName, Omittable<String?>? sid, Omittable<String?>? uri, Omittable<AccountSipSipDomainVoiceFallbackMethod?>? voiceFallbackMethod, Omittable<Uri?>? voiceFallbackUrl, Omittable<AccountSipSipDomainVoiceMethod?>? voiceMethod, Omittable<AccountSipSipDomainVoiceStatusCallbackMethod?>? voiceStatusCallbackMethod, Omittable<Uri?>? voiceStatusCallbackUrl, Omittable<Uri?>? voiceUrl, Omittable<Map<String,dynamic>?>? subresourceUris, Omittable<bool?>? sipRegistration, Omittable<bool?>? emergencyCallingEnabled, Omittable<bool?>? secure, Omittable<String?>? byocTrunkSid, Omittable<String?>? emergencyCallerSid, }) { return AccountSipSipDomain(
  accountSid: accountSid ?? this.accountSid,
  apiVersion: apiVersion ?? this.apiVersion,
  authType: authType ?? this.authType,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  domainName: domainName ?? this.domainName,
  friendlyName: friendlyName ?? this.friendlyName,
  sid: sid ?? this.sid,
  uri: uri ?? this.uri,
  voiceFallbackMethod: voiceFallbackMethod ?? this.voiceFallbackMethod,
  voiceFallbackUrl: voiceFallbackUrl ?? this.voiceFallbackUrl,
  voiceMethod: voiceMethod ?? this.voiceMethod,
  voiceStatusCallbackMethod: voiceStatusCallbackMethod ?? this.voiceStatusCallbackMethod,
  voiceStatusCallbackUrl: voiceStatusCallbackUrl ?? this.voiceStatusCallbackUrl,
  voiceUrl: voiceUrl ?? this.voiceUrl,
  subresourceUris: subresourceUris ?? this.subresourceUris,
  sipRegistration: sipRegistration ?? this.sipRegistration,
  emergencyCallingEnabled: emergencyCallingEnabled ?? this.emergencyCallingEnabled,
  secure: secure ?? this.secure,
  byocTrunkSid: byocTrunkSid ?? this.byocTrunkSid,
  emergencyCallerSid: emergencyCallerSid ?? this.emergencyCallerSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSipSipDomain &&
          accountSid == other.accountSid &&
          apiVersion == other.apiVersion &&
          authType == other.authType &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          domainName == other.domainName &&
          friendlyName == other.friendlyName &&
          sid == other.sid &&
          uri == other.uri &&
          voiceFallbackMethod == other.voiceFallbackMethod &&
          voiceFallbackUrl == other.voiceFallbackUrl &&
          voiceMethod == other.voiceMethod &&
          voiceStatusCallbackMethod == other.voiceStatusCallbackMethod &&
          voiceStatusCallbackUrl == other.voiceStatusCallbackUrl &&
          voiceUrl == other.voiceUrl &&
          subresourceUris == other.subresourceUris &&
          sipRegistration == other.sipRegistration &&
          emergencyCallingEnabled == other.emergencyCallingEnabled &&
          secure == other.secure &&
          byocTrunkSid == other.byocTrunkSid &&
          emergencyCallerSid == other.emergencyCallerSid; } 
@override int get hashCode { return Object.hashAll([accountSid, apiVersion, authType, dateCreated, dateUpdated, domainName, friendlyName, sid, uri, voiceFallbackMethod, voiceFallbackUrl, voiceMethod, voiceStatusCallbackMethod, voiceStatusCallbackUrl, voiceUrl, subresourceUris, sipRegistration, emergencyCallingEnabled, secure, byocTrunkSid, emergencyCallerSid]); } 
@override String toString() { return 'AccountSipSipDomain(accountSid: $accountSid, apiVersion: $apiVersion, authType: $authType, dateCreated: $dateCreated, dateUpdated: $dateUpdated, domainName: $domainName, friendlyName: $friendlyName, sid: $sid, uri: $uri, voiceFallbackMethod: $voiceFallbackMethod, voiceFallbackUrl: $voiceFallbackUrl, voiceMethod: $voiceMethod, voiceStatusCallbackMethod: $voiceStatusCallbackMethod, voiceStatusCallbackUrl: $voiceStatusCallbackUrl, voiceUrl: $voiceUrl, subresourceUris: $subresourceUris, sipRegistration: $sipRegistration, emergencyCallingEnabled: $emergencyCallingEnabled, secure: $secure, byocTrunkSid: $byocTrunkSid, emergencyCallerSid: $emergencyCallerSid)'; } 
 }

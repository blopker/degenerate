// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_incoming_phone_number_incoming_phone_number_toll_free_capabilities.dart';import 'incoming_phone_number_toll_free_enum_emergency_status.dart';import 'incoming_phone_number_toll_free_enum_voice_receive_mode.dart';/// Whether the phone number requires an [Address](https://www.twilio.com/docs/usage/api/address) registered with Twilio. Can be: `none`, `any`, `local`, or `foreign`.
@immutable final class IncomingPhoneNumberTollFreeEnumAddressRequirement {const IncomingPhoneNumberTollFreeEnumAddressRequirement._(this.value);

factory IncomingPhoneNumberTollFreeEnumAddressRequirement.fromJson(String json) { return switch (json) {
  'none' => none,
  'any' => any,
  'local' => local,
  'foreign' => foreign,
  _ => IncomingPhoneNumberTollFreeEnumAddressRequirement._(json),
}; }

static const IncomingPhoneNumberTollFreeEnumAddressRequirement none = IncomingPhoneNumberTollFreeEnumAddressRequirement._('none');

static const IncomingPhoneNumberTollFreeEnumAddressRequirement any = IncomingPhoneNumberTollFreeEnumAddressRequirement._('any');

static const IncomingPhoneNumberTollFreeEnumAddressRequirement local = IncomingPhoneNumberTollFreeEnumAddressRequirement._('local');

static const IncomingPhoneNumberTollFreeEnumAddressRequirement foreign = IncomingPhoneNumberTollFreeEnumAddressRequirement._('foreign');

static const List<IncomingPhoneNumberTollFreeEnumAddressRequirement> values = [none, any, local, foreign];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IncomingPhoneNumberTollFreeEnumAddressRequirement && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IncomingPhoneNumberTollFreeEnumAddressRequirement($value)'; } 
 }
/// The status of address registration with emergency services. A registered emergency address will be used during handling of emergency calls from this number.
@immutable final class IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus {const IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._(this.value);

factory IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus.fromJson(String json) { return switch (json) {
  'registered' => registered,
  'unregistered' => unregistered,
  'pending-registration' => pendingRegistration,
  'registration-failure' => registrationFailure,
  'pending-unregistration' => pendingUnregistration,
  'unregistration-failure' => unregistrationFailure,
  _ => IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._(json),
}; }

static const IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus registered = IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._('registered');

static const IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus unregistered = IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._('unregistered');

static const IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus pendingRegistration = IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._('pending-registration');

static const IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus registrationFailure = IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._('registration-failure');

static const IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus pendingUnregistration = IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._('pending-unregistration');

static const IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus unregistrationFailure = IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus._('unregistration-failure');

static const List<IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus> values = [registered, unregistered, pendingRegistration, registrationFailure, pendingUnregistration, unregistrationFailure];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus($value)'; } 
 }
/// The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod {const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod._(this.value);

factory AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod._(json),
}; }

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod $get = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod._('GET');

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod post = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod._('POST');

static const List<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
@immutable final class AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod {const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod._(this.value);

factory AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod._(json),
}; }

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod $get = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod._('GET');

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod post = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod._('POST');

static const List<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod($value)'; } 
 }
/// The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
@immutable final class AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod {const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod._(this.value);

factory AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod._(json),
}; }

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod $get = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod._('GET');

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod post = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod._('POST');

static const List<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod {const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod._(this.value);

factory AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod._(json),
}; }

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod $get = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod._('GET');

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod post = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod._('POST');

static const List<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
@immutable final class AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod {const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod._(this.value);

factory AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod._(json),
}; }

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod $get = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod._('GET');

static const AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod post = AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod._('POST');

static const List<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod($value)'; } 
 }
@immutable final class AccountIncomingPhoneNumberIncomingPhoneNumberTollFree {const AccountIncomingPhoneNumberIncomingPhoneNumberTollFree({this.origin, this.addressSid, this.addressRequirements, this.apiVersion, this.beta, this.capabilities, this.dateCreated, this.dateUpdated, this.friendlyName, this.identitySid, this.phoneNumber, this.accountSid, this.sid, this.smsApplicationSid, this.smsFallbackMethod, this.smsFallbackUrl, this.smsMethod, this.smsUrl, this.statusCallback, this.statusCallbackMethod, this.trunkSid, this.status, this.voiceReceiveMode, this.voiceApplicationSid, this.voiceCallerIdLookup, this.voiceFallbackMethod, this.voiceFallbackUrl, this.voiceMethod, this.voiceUrl, this.emergencyStatus, this.emergencyAddressSid, this.emergencyAddressStatus, this.bundleSid, this.uri, });

factory AccountIncomingPhoneNumberIncomingPhoneNumberTollFree.fromJson(Map<String, dynamic> json) { return AccountIncomingPhoneNumberIncomingPhoneNumberTollFree(
  accountSid: json['account_sid'] as String?,
  addressSid: json['address_sid'] as String?,
  addressRequirements: json['address_requirements'] != null ? IncomingPhoneNumberTollFreeEnumAddressRequirement.fromJson(json['address_requirements'] as String) : null,
  apiVersion: json['api_version'] as String?,
  beta: json['beta'] as bool?,
  capabilities: json['capabilities'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeCapabilities.fromJson(json['capabilities'] as Map<String, dynamic>) : null,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  friendlyName: json['friendly_name'] as String?,
  identitySid: json['identity_sid'] as String?,
  phoneNumber: json['phone_number'] as String?,
  origin: json['origin'] as String?,
  sid: json['sid'] as String?,
  smsApplicationSid: json['sms_application_sid'] as String?,
  smsFallbackMethod: json['sms_fallback_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod.fromJson(json['sms_fallback_method'] as String) : null,
  smsFallbackUrl: json['sms_fallback_url'] != null ? Uri.parse(json['sms_fallback_url'] as String) : null,
  smsMethod: json['sms_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod.fromJson(json['sms_method'] as String) : null,
  smsUrl: json['sms_url'] != null ? Uri.parse(json['sms_url'] as String) : null,
  statusCallback: json['status_callback'] != null ? Uri.parse(json['status_callback'] as String) : null,
  statusCallbackMethod: json['status_callback_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod.fromJson(json['status_callback_method'] as String) : null,
  trunkSid: json['trunk_sid'] as String?,
  uri: json['uri'] as String?,
  voiceReceiveMode: json['voice_receive_mode'] != null ? IncomingPhoneNumberTollFreeEnumVoiceReceiveMode.fromJson(json['voice_receive_mode'] as String) : null,
  voiceApplicationSid: json['voice_application_sid'] as String?,
  voiceCallerIdLookup: json['voice_caller_id_lookup'] as bool?,
  voiceFallbackMethod: json['voice_fallback_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod.fromJson(json['voice_fallback_method'] as String) : null,
  voiceFallbackUrl: json['voice_fallback_url'] != null ? Uri.parse(json['voice_fallback_url'] as String) : null,
  voiceMethod: json['voice_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod.fromJson(json['voice_method'] as String) : null,
  voiceUrl: json['voice_url'] != null ? Uri.parse(json['voice_url'] as String) : null,
  emergencyStatus: json['emergency_status'] != null ? IncomingPhoneNumberTollFreeEnumEmergencyStatus.fromJson(json['emergency_status'] as String) : null,
  emergencyAddressSid: json['emergency_address_sid'] as String?,
  emergencyAddressStatus: json['emergency_address_status'] != null ? IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus.fromJson(json['emergency_address_status'] as String) : null,
  bundleSid: json['bundle_sid'] as String?,
  status: json['status'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the resource.
final String? accountSid;

/// The SID of the Address resource associated with the phone number.
final String? addressSid;

final IncomingPhoneNumberTollFreeEnumAddressRequirement? addressRequirements;

/// The API version used to start a new TwiML session.
final String? apiVersion;

/// Whether the phone number is new to the Twilio platform. Can be: `true` or `false`.
final bool? beta;

/// The set of Boolean properties that indicate whether a phone number can receive calls or messages.  Capabilities are  `Voice`, `SMS`, and `MMS` and each capability can be: `true` or `false`.
final AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeCapabilities? capabilities;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The string that you assigned to describe the resource.
final String? friendlyName;

/// The SID of the Identity resource that we associate with the phone number. Some regions require an Identity to meet local regulations.
final String? identitySid;

/// The phone number in [E.164](https://www.twilio.com/docs/glossary/what-e164) format, which consists of a + followed by the country code and subscriber number.
final String? phoneNumber;

/// The phone number's origin. `twilio` identifies Twilio-owned phone numbers and `hosted` identifies hosted phone numbers.
final String? origin;

/// The unique string that that we created to identify the resource.
final String? sid;

/// The SID of the application that handles SMS messages sent to the phone number. If an `sms_application_sid` is present, we ignore all `sms_*_url` values and use those of the application.
final String? smsApplicationSid;

/// The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
final AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod? smsFallbackMethod;

/// The URL that we call when an error occurs while retrieving or executing the TwiML from `sms_url`.
final Uri? smsFallbackUrl;

/// The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
final AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod? smsMethod;

/// The URL we call when the phone number receives an incoming SMS message.
final Uri? smsUrl;

/// The URL we call using the `status_callback_method` to send status information to your application.
final Uri? statusCallback;

/// The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
final AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod? statusCallbackMethod;

/// The SID of the Trunk that handles calls to the phone number. If a `trunk_sid` is present, we ignore all of the voice urls and voice applications and use those set on the Trunk. Setting a `trunk_sid` will automatically delete your `voice_application_sid` and vice versa.
final String? trunkSid;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

final IncomingPhoneNumberTollFreeEnumVoiceReceiveMode? voiceReceiveMode;

/// The SID of the application that handles calls to the phone number. If a `voice_application_sid` is present, we ignore all of the voice urls and use those set on the application. Setting a `voice_application_sid` will automatically delete your `trunk_sid` and vice versa.
final String? voiceApplicationSid;

/// Whether we look up the caller's caller-ID name from the CNAM database ($0.01 per look up). Can be: `true` or `false`.
final bool? voiceCallerIdLookup;

/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
final AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod? voiceFallbackMethod;

/// The URL that we call when an error occurs retrieving or executing the TwiML requested by `url`.
final Uri? voiceFallbackUrl;

/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
final AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod? voiceMethod;

/// The URL we call when the phone number receives a call. The `voice_url` will not be used if a `voice_application_sid` or a `trunk_sid` is set.
final Uri? voiceUrl;

final IncomingPhoneNumberTollFreeEnumEmergencyStatus? emergencyStatus;

/// The SID of the emergency address configuration that we use for emergency calling from this phone number.
final String? emergencyAddressSid;

final IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus? emergencyAddressStatus;

/// The SID of the Bundle resource that you associate with the phone number. Some regions require a Bundle to meet local Regulations.
final String? bundleSid;

final String? status;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'address_sid': ?addressSid,
  if (addressRequirements != null) 'address_requirements': addressRequirements?.toJson(),
  'api_version': ?apiVersion,
  'beta': ?beta,
  if (capabilities != null) 'capabilities': capabilities?.toJson(),
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'friendly_name': ?friendlyName,
  'identity_sid': ?identitySid,
  'phone_number': ?phoneNumber,
  'origin': ?origin,
  'sid': ?sid,
  'sms_application_sid': ?smsApplicationSid,
  if (smsFallbackMethod != null) 'sms_fallback_method': smsFallbackMethod?.toJson(),
  if (smsFallbackUrl != null) 'sms_fallback_url': smsFallbackUrl?.toString(),
  if (smsMethod != null) 'sms_method': smsMethod?.toJson(),
  if (smsUrl != null) 'sms_url': smsUrl?.toString(),
  if (statusCallback != null) 'status_callback': statusCallback?.toString(),
  if (statusCallbackMethod != null) 'status_callback_method': statusCallbackMethod?.toJson(),
  'trunk_sid': ?trunkSid,
  'uri': ?uri,
  if (voiceReceiveMode != null) 'voice_receive_mode': voiceReceiveMode?.toJson(),
  'voice_application_sid': ?voiceApplicationSid,
  'voice_caller_id_lookup': ?voiceCallerIdLookup,
  if (voiceFallbackMethod != null) 'voice_fallback_method': voiceFallbackMethod?.toJson(),
  if (voiceFallbackUrl != null) 'voice_fallback_url': voiceFallbackUrl?.toString(),
  if (voiceMethod != null) 'voice_method': voiceMethod?.toJson(),
  if (voiceUrl != null) 'voice_url': voiceUrl?.toString(),
  if (emergencyStatus != null) 'emergency_status': emergencyStatus?.toJson(),
  'emergency_address_sid': ?emergencyAddressSid,
  if (emergencyAddressStatus != null) 'emergency_address_status': emergencyAddressStatus?.toJson(),
  'bundle_sid': ?bundleSid,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'address_sid', 'address_requirements', 'api_version', 'beta', 'capabilities', 'date_created', 'date_updated', 'friendly_name', 'identity_sid', 'phone_number', 'origin', 'sid', 'sms_application_sid', 'sms_fallback_method', 'sms_fallback_url', 'sms_method', 'sms_url', 'status_callback', 'status_callback_method', 'trunk_sid', 'uri', 'voice_receive_mode', 'voice_application_sid', 'voice_caller_id_lookup', 'voice_fallback_method', 'voice_fallback_url', 'voice_method', 'voice_url', 'emergency_status', 'emergency_address_sid', 'emergency_address_status', 'bundle_sid', 'status'}.contains(key)); } 
AccountIncomingPhoneNumberIncomingPhoneNumberTollFree copyWith({String? Function()? accountSid, String? Function()? addressSid, IncomingPhoneNumberTollFreeEnumAddressRequirement Function()? addressRequirements, String? Function()? apiVersion, bool? Function()? beta, AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeCapabilities? Function()? capabilities, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? friendlyName, String? Function()? identitySid, String? Function()? phoneNumber, String? Function()? origin, String? Function()? sid, String? Function()? smsApplicationSid, AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod? Function()? smsFallbackMethod, Uri? Function()? smsFallbackUrl, AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod? Function()? smsMethod, Uri? Function()? smsUrl, Uri? Function()? statusCallback, AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod? Function()? statusCallbackMethod, String? Function()? trunkSid, String? Function()? uri, IncomingPhoneNumberTollFreeEnumVoiceReceiveMode Function()? voiceReceiveMode, String? Function()? voiceApplicationSid, bool? Function()? voiceCallerIdLookup, AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod? Function()? voiceFallbackMethod, Uri? Function()? voiceFallbackUrl, AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod? Function()? voiceMethod, Uri? Function()? voiceUrl, IncomingPhoneNumberTollFreeEnumEmergencyStatus Function()? emergencyStatus, String? Function()? emergencyAddressSid, IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus Function()? emergencyAddressStatus, String? Function()? bundleSid, String? Function()? status, }) { return AccountIncomingPhoneNumberIncomingPhoneNumberTollFree(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  addressSid: addressSid != null ? addressSid() : this.addressSid,
  addressRequirements: addressRequirements != null ? addressRequirements() : this.addressRequirements,
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  beta: beta != null ? beta() : this.beta,
  capabilities: capabilities != null ? capabilities() : this.capabilities,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  identitySid: identitySid != null ? identitySid() : this.identitySid,
  phoneNumber: phoneNumber != null ? phoneNumber() : this.phoneNumber,
  origin: origin != null ? origin() : this.origin,
  sid: sid != null ? sid() : this.sid,
  smsApplicationSid: smsApplicationSid != null ? smsApplicationSid() : this.smsApplicationSid,
  smsFallbackMethod: smsFallbackMethod != null ? smsFallbackMethod() : this.smsFallbackMethod,
  smsFallbackUrl: smsFallbackUrl != null ? smsFallbackUrl() : this.smsFallbackUrl,
  smsMethod: smsMethod != null ? smsMethod() : this.smsMethod,
  smsUrl: smsUrl != null ? smsUrl() : this.smsUrl,
  statusCallback: statusCallback != null ? statusCallback() : this.statusCallback,
  statusCallbackMethod: statusCallbackMethod != null ? statusCallbackMethod() : this.statusCallbackMethod,
  trunkSid: trunkSid != null ? trunkSid() : this.trunkSid,
  uri: uri != null ? uri() : this.uri,
  voiceReceiveMode: voiceReceiveMode != null ? voiceReceiveMode() : this.voiceReceiveMode,
  voiceApplicationSid: voiceApplicationSid != null ? voiceApplicationSid() : this.voiceApplicationSid,
  voiceCallerIdLookup: voiceCallerIdLookup != null ? voiceCallerIdLookup() : this.voiceCallerIdLookup,
  voiceFallbackMethod: voiceFallbackMethod != null ? voiceFallbackMethod() : this.voiceFallbackMethod,
  voiceFallbackUrl: voiceFallbackUrl != null ? voiceFallbackUrl() : this.voiceFallbackUrl,
  voiceMethod: voiceMethod != null ? voiceMethod() : this.voiceMethod,
  voiceUrl: voiceUrl != null ? voiceUrl() : this.voiceUrl,
  emergencyStatus: emergencyStatus != null ? emergencyStatus() : this.emergencyStatus,
  emergencyAddressSid: emergencyAddressSid != null ? emergencyAddressSid() : this.emergencyAddressSid,
  emergencyAddressStatus: emergencyAddressStatus != null ? emergencyAddressStatus() : this.emergencyAddressStatus,
  bundleSid: bundleSid != null ? bundleSid() : this.bundleSid,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountIncomingPhoneNumberIncomingPhoneNumberTollFree &&
          accountSid == other.accountSid &&
          addressSid == other.addressSid &&
          addressRequirements == other.addressRequirements &&
          apiVersion == other.apiVersion &&
          beta == other.beta &&
          capabilities == other.capabilities &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          identitySid == other.identitySid &&
          phoneNumber == other.phoneNumber &&
          origin == other.origin &&
          sid == other.sid &&
          smsApplicationSid == other.smsApplicationSid &&
          smsFallbackMethod == other.smsFallbackMethod &&
          smsFallbackUrl == other.smsFallbackUrl &&
          smsMethod == other.smsMethod &&
          smsUrl == other.smsUrl &&
          statusCallback == other.statusCallback &&
          statusCallbackMethod == other.statusCallbackMethod &&
          trunkSid == other.trunkSid &&
          uri == other.uri &&
          voiceReceiveMode == other.voiceReceiveMode &&
          voiceApplicationSid == other.voiceApplicationSid &&
          voiceCallerIdLookup == other.voiceCallerIdLookup &&
          voiceFallbackMethod == other.voiceFallbackMethod &&
          voiceFallbackUrl == other.voiceFallbackUrl &&
          voiceMethod == other.voiceMethod &&
          voiceUrl == other.voiceUrl &&
          emergencyStatus == other.emergencyStatus &&
          emergencyAddressSid == other.emergencyAddressSid &&
          emergencyAddressStatus == other.emergencyAddressStatus &&
          bundleSid == other.bundleSid &&
          status == other.status; } 
@override int get hashCode { return Object.hashAll([accountSid, addressSid, addressRequirements, apiVersion, beta, capabilities, dateCreated, dateUpdated, friendlyName, identitySid, phoneNumber, origin, sid, smsApplicationSid, smsFallbackMethod, smsFallbackUrl, smsMethod, smsUrl, statusCallback, statusCallbackMethod, trunkSid, uri, voiceReceiveMode, voiceApplicationSid, voiceCallerIdLookup, voiceFallbackMethod, voiceFallbackUrl, voiceMethod, voiceUrl, emergencyStatus, emergencyAddressSid, emergencyAddressStatus, bundleSid, status]); } 
@override String toString() { return 'AccountIncomingPhoneNumberIncomingPhoneNumberTollFree(accountSid: $accountSid, addressSid: $addressSid, addressRequirements: $addressRequirements, apiVersion: $apiVersion, beta: $beta, capabilities: $capabilities, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, identitySid: $identitySid, phoneNumber: $phoneNumber, origin: $origin, sid: $sid, smsApplicationSid: $smsApplicationSid, smsFallbackMethod: $smsFallbackMethod, smsFallbackUrl: $smsFallbackUrl, smsMethod: $smsMethod, smsUrl: $smsUrl, statusCallback: $statusCallback, statusCallbackMethod: $statusCallbackMethod, trunkSid: $trunkSid, uri: $uri, voiceReceiveMode: $voiceReceiveMode, voiceApplicationSid: $voiceApplicationSid, voiceCallerIdLookup: $voiceCallerIdLookup, voiceFallbackMethod: $voiceFallbackMethod, voiceFallbackUrl: $voiceFallbackUrl, voiceMethod: $voiceMethod, voiceUrl: $voiceUrl, emergencyStatus: $emergencyStatus, emergencyAddressSid: $emergencyAddressSid, emergencyAddressStatus: $emergencyAddressStatus, bundleSid: $bundleSid, status: $status)'; } 
 }

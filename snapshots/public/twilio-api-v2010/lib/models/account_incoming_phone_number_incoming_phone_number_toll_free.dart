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
@immutable final class AccountIncomingPhoneNumberIncomingPhoneNumberTollFree {const AccountIncomingPhoneNumberIncomingPhoneNumberTollFree({this.origin = const Omittable.absent(), this.addressSid = const Omittable.absent(), this.addressRequirements, this.apiVersion = const Omittable.absent(), this.beta = const Omittable.absent(), this.capabilities = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.identitySid = const Omittable.absent(), this.phoneNumber = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.sid = const Omittable.absent(), this.smsApplicationSid = const Omittable.absent(), this.smsFallbackMethod = const Omittable.absent(), this.smsFallbackUrl = const Omittable.absent(), this.smsMethod = const Omittable.absent(), this.smsUrl = const Omittable.absent(), this.statusCallback = const Omittable.absent(), this.statusCallbackMethod = const Omittable.absent(), this.trunkSid = const Omittable.absent(), this.status = const Omittable.absent(), this.voiceReceiveMode, this.voiceApplicationSid = const Omittable.absent(), this.voiceCallerIdLookup = const Omittable.absent(), this.voiceFallbackMethod = const Omittable.absent(), this.voiceFallbackUrl = const Omittable.absent(), this.voiceMethod = const Omittable.absent(), this.voiceUrl = const Omittable.absent(), this.emergencyStatus, this.emergencyAddressSid = const Omittable.absent(), this.emergencyAddressStatus, this.bundleSid = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountIncomingPhoneNumberIncomingPhoneNumberTollFree.fromJson(Map<String, dynamic> json) { return AccountIncomingPhoneNumberIncomingPhoneNumberTollFree(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  addressSid: json.containsKey('address_sid') ? Omittable(json['address_sid'] as String?) : const Omittable.absent(),
  addressRequirements: json['address_requirements'] != null ? IncomingPhoneNumberTollFreeEnumAddressRequirement.fromJson(json['address_requirements'] as String) : null,
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  beta: json.containsKey('beta') ? Omittable(json['beta'] as bool?) : const Omittable.absent(),
  capabilities: json.containsKey('capabilities') ? Omittable(json['capabilities'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeCapabilities.fromJson(json['capabilities'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  identitySid: json.containsKey('identity_sid') ? Omittable(json['identity_sid'] as String?) : const Omittable.absent(),
  phoneNumber: json.containsKey('phone_number') ? Omittable(json['phone_number'] as String?) : const Omittable.absent(),
  origin: json.containsKey('origin') ? Omittable(json['origin'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  smsApplicationSid: json.containsKey('sms_application_sid') ? Omittable(json['sms_application_sid'] as String?) : const Omittable.absent(),
  smsFallbackMethod: json.containsKey('sms_fallback_method') ? Omittable(json['sms_fallback_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod.fromJson(json['sms_fallback_method'] as String) : null) : const Omittable.absent(),
  smsFallbackUrl: json.containsKey('sms_fallback_url') ? Omittable(json['sms_fallback_url'] != null ? Uri.parse(json['sms_fallback_url'] as String) : null) : const Omittable.absent(),
  smsMethod: json.containsKey('sms_method') ? Omittable(json['sms_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod.fromJson(json['sms_method'] as String) : null) : const Omittable.absent(),
  smsUrl: json.containsKey('sms_url') ? Omittable(json['sms_url'] != null ? Uri.parse(json['sms_url'] as String) : null) : const Omittable.absent(),
  statusCallback: json.containsKey('status_callback') ? Omittable(json['status_callback'] != null ? Uri.parse(json['status_callback'] as String) : null) : const Omittable.absent(),
  statusCallbackMethod: json.containsKey('status_callback_method') ? Omittable(json['status_callback_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod.fromJson(json['status_callback_method'] as String) : null) : const Omittable.absent(),
  trunkSid: json.containsKey('trunk_sid') ? Omittable(json['trunk_sid'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  voiceReceiveMode: json['voice_receive_mode'] != null ? IncomingPhoneNumberTollFreeEnumVoiceReceiveMode.fromJson(json['voice_receive_mode'] as String) : null,
  voiceApplicationSid: json.containsKey('voice_application_sid') ? Omittable(json['voice_application_sid'] as String?) : const Omittable.absent(),
  voiceCallerIdLookup: json.containsKey('voice_caller_id_lookup') ? Omittable(json['voice_caller_id_lookup'] as bool?) : const Omittable.absent(),
  voiceFallbackMethod: json.containsKey('voice_fallback_method') ? Omittable(json['voice_fallback_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod.fromJson(json['voice_fallback_method'] as String) : null) : const Omittable.absent(),
  voiceFallbackUrl: json.containsKey('voice_fallback_url') ? Omittable(json['voice_fallback_url'] != null ? Uri.parse(json['voice_fallback_url'] as String) : null) : const Omittable.absent(),
  voiceMethod: json.containsKey('voice_method') ? Omittable(json['voice_method'] != null ? AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod.fromJson(json['voice_method'] as String) : null) : const Omittable.absent(),
  voiceUrl: json.containsKey('voice_url') ? Omittable(json['voice_url'] != null ? Uri.parse(json['voice_url'] as String) : null) : const Omittable.absent(),
  emergencyStatus: json['emergency_status'] != null ? IncomingPhoneNumberTollFreeEnumEmergencyStatus.fromJson(json['emergency_status'] as String) : null,
  emergencyAddressSid: json.containsKey('emergency_address_sid') ? Omittable(json['emergency_address_sid'] as String?) : const Omittable.absent(),
  emergencyAddressStatus: json['emergency_address_status'] != null ? IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus.fromJson(json['emergency_address_status'] as String) : null,
  bundleSid: json.containsKey('bundle_sid') ? Omittable(json['bundle_sid'] as String?) : const Omittable.absent(),
  status: json.containsKey('status') ? Omittable(json['status'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the resource.
final Omittable<String?> accountSid;

/// The SID of the Address resource associated with the phone number.
final Omittable<String?> addressSid;

final IncomingPhoneNumberTollFreeEnumAddressRequirement? addressRequirements;

/// The API version used to start a new TwiML session.
final Omittable<String?> apiVersion;

/// Whether the phone number is new to the Twilio platform. Can be: `true` or `false`.
final Omittable<bool?> beta;

/// The set of Boolean properties that indicate whether a phone number can receive calls or messages.  Capabilities are  `Voice`, `SMS`, and `MMS` and each capability can be: `true` or `false`.
final Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeCapabilities?> capabilities;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The SID of the Identity resource that we associate with the phone number. Some regions require an Identity to meet local regulations.
final Omittable<String?> identitySid;

/// The phone number in [E.164](https://www.twilio.com/docs/glossary/what-e164) format, which consists of a + followed by the country code and subscriber number.
final Omittable<String?> phoneNumber;

/// The phone number's origin. `twilio` identifies Twilio-owned phone numbers and `hosted` identifies hosted phone numbers.
final Omittable<String?> origin;

/// The unique string that that we created to identify the resource.
final Omittable<String?> sid;

/// The SID of the application that handles SMS messages sent to the phone number. If an `sms_application_sid` is present, we ignore all `sms_*_url` values and use those of the application.
final Omittable<String?> smsApplicationSid;

/// The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
final Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod?> smsFallbackMethod;

/// The URL that we call when an error occurs while retrieving or executing the TwiML from `sms_url`.
final Omittable<Uri?> smsFallbackUrl;

/// The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
final Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod?> smsMethod;

/// The URL we call when the phone number receives an incoming SMS message.
final Omittable<Uri?> smsUrl;

/// The URL we call using the `status_callback_method` to send status information to your application.
final Omittable<Uri?> statusCallback;

/// The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
final Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod?> statusCallbackMethod;

/// The SID of the Trunk that handles calls to the phone number. If a `trunk_sid` is present, we ignore all of the voice urls and voice applications and use those set on the Trunk. Setting a `trunk_sid` will automatically delete your `voice_application_sid` and vice versa.
final Omittable<String?> trunkSid;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

final IncomingPhoneNumberTollFreeEnumVoiceReceiveMode? voiceReceiveMode;

/// The SID of the application that handles calls to the phone number. If a `voice_application_sid` is present, we ignore all of the voice urls and use those set on the application. Setting a `voice_application_sid` will automatically delete your `trunk_sid` and vice versa.
final Omittable<String?> voiceApplicationSid;

/// Whether we look up the caller's caller-ID name from the CNAM database ($0.01 per look up). Can be: `true` or `false`.
final Omittable<bool?> voiceCallerIdLookup;

/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
final Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod?> voiceFallbackMethod;

/// The URL that we call when an error occurs retrieving or executing the TwiML requested by `url`.
final Omittable<Uri?> voiceFallbackUrl;

/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
final Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod?> voiceMethod;

/// The URL we call when the phone number receives a call. The `voice_url` will not be used if a `voice_application_sid` or a `trunk_sid` is set.
final Omittable<Uri?> voiceUrl;

final IncomingPhoneNumberTollFreeEnumEmergencyStatus? emergencyStatus;

/// The SID of the emergency address configuration that we use for emergency calling from this phone number.
final Omittable<String?> emergencyAddressSid;

final IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus? emergencyAddressStatus;

/// The SID of the Bundle resource that you associate with the phone number. Some regions require a Bundle to meet local Regulations.
final Omittable<String?> bundleSid;

final Omittable<String?> status;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (addressSid.isPresent) 'address_sid': addressSid.value,
  if (addressRequirements != null) 'address_requirements': addressRequirements?.toJson(),
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (beta.isPresent) 'beta': beta.value,
  if (capabilities.isPresent) 'capabilities': capabilities.value?.toJson(),
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (identitySid.isPresent) 'identity_sid': identitySid.value,
  if (phoneNumber.isPresent) 'phone_number': phoneNumber.value,
  if (origin.isPresent) 'origin': origin.value,
  if (sid.isPresent) 'sid': sid.value,
  if (smsApplicationSid.isPresent) 'sms_application_sid': smsApplicationSid.value,
  if (smsFallbackMethod.isPresent) 'sms_fallback_method': smsFallbackMethod.value?.toJson(),
  if (smsFallbackUrl.isPresent) 'sms_fallback_url': smsFallbackUrl.value?.toString(),
  if (smsMethod.isPresent) 'sms_method': smsMethod.value?.toJson(),
  if (smsUrl.isPresent) 'sms_url': smsUrl.value?.toString(),
  if (statusCallback.isPresent) 'status_callback': statusCallback.value?.toString(),
  if (statusCallbackMethod.isPresent) 'status_callback_method': statusCallbackMethod.value?.toJson(),
  if (trunkSid.isPresent) 'trunk_sid': trunkSid.value,
  if (uri.isPresent) 'uri': uri.value,
  if (voiceReceiveMode != null) 'voice_receive_mode': voiceReceiveMode?.toJson(),
  if (voiceApplicationSid.isPresent) 'voice_application_sid': voiceApplicationSid.value,
  if (voiceCallerIdLookup.isPresent) 'voice_caller_id_lookup': voiceCallerIdLookup.value,
  if (voiceFallbackMethod.isPresent) 'voice_fallback_method': voiceFallbackMethod.value?.toJson(),
  if (voiceFallbackUrl.isPresent) 'voice_fallback_url': voiceFallbackUrl.value?.toString(),
  if (voiceMethod.isPresent) 'voice_method': voiceMethod.value?.toJson(),
  if (voiceUrl.isPresent) 'voice_url': voiceUrl.value?.toString(),
  if (emergencyStatus != null) 'emergency_status': emergencyStatus?.toJson(),
  if (emergencyAddressSid.isPresent) 'emergency_address_sid': emergencyAddressSid.value,
  if (emergencyAddressStatus != null) 'emergency_address_status': emergencyAddressStatus?.toJson(),
  if (bundleSid.isPresent) 'bundle_sid': bundleSid.value,
  if (status.isPresent) 'status': status.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'address_sid', 'address_requirements', 'api_version', 'beta', 'capabilities', 'date_created', 'date_updated', 'friendly_name', 'identity_sid', 'phone_number', 'origin', 'sid', 'sms_application_sid', 'sms_fallback_method', 'sms_fallback_url', 'sms_method', 'sms_url', 'status_callback', 'status_callback_method', 'trunk_sid', 'uri', 'voice_receive_mode', 'voice_application_sid', 'voice_caller_id_lookup', 'voice_fallback_method', 'voice_fallback_url', 'voice_method', 'voice_url', 'emergency_status', 'emergency_address_sid', 'emergency_address_status', 'bundle_sid', 'status'}.contains(key)); } 
AccountIncomingPhoneNumberIncomingPhoneNumberTollFree copyWith({Omittable<String?>? accountSid, Omittable<String?>? addressSid, IncomingPhoneNumberTollFreeEnumAddressRequirement? Function()? addressRequirements, Omittable<String?>? apiVersion, Omittable<bool?>? beta, Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeCapabilities?>? capabilities, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? friendlyName, Omittable<String?>? identitySid, Omittable<String?>? phoneNumber, Omittable<String?>? origin, Omittable<String?>? sid, Omittable<String?>? smsApplicationSid, Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsFallbackMethod?>? smsFallbackMethod, Omittable<Uri?>? smsFallbackUrl, Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeSmsMethod?>? smsMethod, Omittable<Uri?>? smsUrl, Omittable<Uri?>? statusCallback, Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeStatusCallbackMethod?>? statusCallbackMethod, Omittable<String?>? trunkSid, Omittable<String?>? uri, IncomingPhoneNumberTollFreeEnumVoiceReceiveMode? Function()? voiceReceiveMode, Omittable<String?>? voiceApplicationSid, Omittable<bool?>? voiceCallerIdLookup, Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceFallbackMethod?>? voiceFallbackMethod, Omittable<Uri?>? voiceFallbackUrl, Omittable<AccountIncomingPhoneNumberIncomingPhoneNumberTollFreeVoiceMethod?>? voiceMethod, Omittable<Uri?>? voiceUrl, IncomingPhoneNumberTollFreeEnumEmergencyStatus? Function()? emergencyStatus, Omittable<String?>? emergencyAddressSid, IncomingPhoneNumberTollFreeEnumEmergencyAddressStatus? Function()? emergencyAddressStatus, Omittable<String?>? bundleSid, Omittable<String?>? status, }) { return AccountIncomingPhoneNumberIncomingPhoneNumberTollFree(
  accountSid: accountSid ?? this.accountSid,
  addressSid: addressSid ?? this.addressSid,
  addressRequirements: addressRequirements != null ? addressRequirements() : this.addressRequirements,
  apiVersion: apiVersion ?? this.apiVersion,
  beta: beta ?? this.beta,
  capabilities: capabilities ?? this.capabilities,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  friendlyName: friendlyName ?? this.friendlyName,
  identitySid: identitySid ?? this.identitySid,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  origin: origin ?? this.origin,
  sid: sid ?? this.sid,
  smsApplicationSid: smsApplicationSid ?? this.smsApplicationSid,
  smsFallbackMethod: smsFallbackMethod ?? this.smsFallbackMethod,
  smsFallbackUrl: smsFallbackUrl ?? this.smsFallbackUrl,
  smsMethod: smsMethod ?? this.smsMethod,
  smsUrl: smsUrl ?? this.smsUrl,
  statusCallback: statusCallback ?? this.statusCallback,
  statusCallbackMethod: statusCallbackMethod ?? this.statusCallbackMethod,
  trunkSid: trunkSid ?? this.trunkSid,
  uri: uri ?? this.uri,
  voiceReceiveMode: voiceReceiveMode != null ? voiceReceiveMode() : this.voiceReceiveMode,
  voiceApplicationSid: voiceApplicationSid ?? this.voiceApplicationSid,
  voiceCallerIdLookup: voiceCallerIdLookup ?? this.voiceCallerIdLookup,
  voiceFallbackMethod: voiceFallbackMethod ?? this.voiceFallbackMethod,
  voiceFallbackUrl: voiceFallbackUrl ?? this.voiceFallbackUrl,
  voiceMethod: voiceMethod ?? this.voiceMethod,
  voiceUrl: voiceUrl ?? this.voiceUrl,
  emergencyStatus: emergencyStatus != null ? emergencyStatus() : this.emergencyStatus,
  emergencyAddressSid: emergencyAddressSid ?? this.emergencyAddressSid,
  emergencyAddressStatus: emergencyAddressStatus != null ? emergencyAddressStatus() : this.emergencyAddressStatus,
  bundleSid: bundleSid ?? this.bundleSid,
  status: status ?? this.status,
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

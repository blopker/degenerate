// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether the phone number requires an [Address](https://www.twilio.com/docs/usage/api/address) registered with Twilio. Can be: `none`, `any`, `local`, or `foreign`.
@immutable final class DependentPhoneNumberEnumAddressRequirement {const DependentPhoneNumberEnumAddressRequirement._(this.value);

factory DependentPhoneNumberEnumAddressRequirement.fromJson(String json) { return switch (json) {
  'none' => none,
  'any' => any,
  'local' => local,
  'foreign' => foreign,
  _ => DependentPhoneNumberEnumAddressRequirement._(json),
}; }

static const DependentPhoneNumberEnumAddressRequirement none = DependentPhoneNumberEnumAddressRequirement._('none');

static const DependentPhoneNumberEnumAddressRequirement any = DependentPhoneNumberEnumAddressRequirement._('any');

static const DependentPhoneNumberEnumAddressRequirement local = DependentPhoneNumberEnumAddressRequirement._('local');

static const DependentPhoneNumberEnumAddressRequirement foreign = DependentPhoneNumberEnumAddressRequirement._('foreign');

static const List<DependentPhoneNumberEnumAddressRequirement> values = [none, any, local, foreign];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependentPhoneNumberEnumAddressRequirement && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependentPhoneNumberEnumAddressRequirement($value)'; } 
 }
/// Whether the phone number is enabled for emergency calling.
@immutable final class DependentPhoneNumberEnumEmergencyStatus {const DependentPhoneNumberEnumEmergencyStatus._(this.value);

factory DependentPhoneNumberEnumEmergencyStatus.fromJson(String json) { return switch (json) {
  'Active' => active,
  'Inactive' => inactive,
  _ => DependentPhoneNumberEnumEmergencyStatus._(json),
}; }

static const DependentPhoneNumberEnumEmergencyStatus active = DependentPhoneNumberEnumEmergencyStatus._('Active');

static const DependentPhoneNumberEnumEmergencyStatus inactive = DependentPhoneNumberEnumEmergencyStatus._('Inactive');

static const List<DependentPhoneNumberEnumEmergencyStatus> values = [active, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependentPhoneNumberEnumEmergencyStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependentPhoneNumberEnumEmergencyStatus($value)'; } 
 }
/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
@immutable final class AccountAddressDependentPhoneNumberVoiceMethod {const AccountAddressDependentPhoneNumberVoiceMethod._(this.value);

factory AccountAddressDependentPhoneNumberVoiceMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountAddressDependentPhoneNumberVoiceMethod._(json),
}; }

static const AccountAddressDependentPhoneNumberVoiceMethod $get = AccountAddressDependentPhoneNumberVoiceMethod._('GET');

static const AccountAddressDependentPhoneNumberVoiceMethod post = AccountAddressDependentPhoneNumberVoiceMethod._('POST');

static const List<AccountAddressDependentPhoneNumberVoiceMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountAddressDependentPhoneNumberVoiceMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountAddressDependentPhoneNumberVoiceMethod($value)'; } 
 }
/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountAddressDependentPhoneNumberVoiceFallbackMethod {const AccountAddressDependentPhoneNumberVoiceFallbackMethod._(this.value);

factory AccountAddressDependentPhoneNumberVoiceFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountAddressDependentPhoneNumberVoiceFallbackMethod._(json),
}; }

static const AccountAddressDependentPhoneNumberVoiceFallbackMethod $get = AccountAddressDependentPhoneNumberVoiceFallbackMethod._('GET');

static const AccountAddressDependentPhoneNumberVoiceFallbackMethod post = AccountAddressDependentPhoneNumberVoiceFallbackMethod._('POST');

static const List<AccountAddressDependentPhoneNumberVoiceFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountAddressDependentPhoneNumberVoiceFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountAddressDependentPhoneNumberVoiceFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountAddressDependentPhoneNumberSmsFallbackMethod {const AccountAddressDependentPhoneNumberSmsFallbackMethod._(this.value);

factory AccountAddressDependentPhoneNumberSmsFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountAddressDependentPhoneNumberSmsFallbackMethod._(json),
}; }

static const AccountAddressDependentPhoneNumberSmsFallbackMethod $get = AccountAddressDependentPhoneNumberSmsFallbackMethod._('GET');

static const AccountAddressDependentPhoneNumberSmsFallbackMethod post = AccountAddressDependentPhoneNumberSmsFallbackMethod._('POST');

static const List<AccountAddressDependentPhoneNumberSmsFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountAddressDependentPhoneNumberSmsFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountAddressDependentPhoneNumberSmsFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
@immutable final class AccountAddressDependentPhoneNumberSmsMethod {const AccountAddressDependentPhoneNumberSmsMethod._(this.value);

factory AccountAddressDependentPhoneNumberSmsMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountAddressDependentPhoneNumberSmsMethod._(json),
}; }

static const AccountAddressDependentPhoneNumberSmsMethod $get = AccountAddressDependentPhoneNumberSmsMethod._('GET');

static const AccountAddressDependentPhoneNumberSmsMethod post = AccountAddressDependentPhoneNumberSmsMethod._('POST');

static const List<AccountAddressDependentPhoneNumberSmsMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountAddressDependentPhoneNumberSmsMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountAddressDependentPhoneNumberSmsMethod($value)'; } 
 }
/// The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
@immutable final class AccountAddressDependentPhoneNumberStatusCallbackMethod {const AccountAddressDependentPhoneNumberStatusCallbackMethod._(this.value);

factory AccountAddressDependentPhoneNumberStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountAddressDependentPhoneNumberStatusCallbackMethod._(json),
}; }

static const AccountAddressDependentPhoneNumberStatusCallbackMethod $get = AccountAddressDependentPhoneNumberStatusCallbackMethod._('GET');

static const AccountAddressDependentPhoneNumberStatusCallbackMethod post = AccountAddressDependentPhoneNumberStatusCallbackMethod._('POST');

static const List<AccountAddressDependentPhoneNumberStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountAddressDependentPhoneNumberStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountAddressDependentPhoneNumberStatusCallbackMethod($value)'; } 
 }
@immutable final class AccountAddressDependentPhoneNumber {const AccountAddressDependentPhoneNumber({this.sid = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.phoneNumber = const Omittable.absent(), this.voiceUrl = const Omittable.absent(), this.voiceMethod = const Omittable.absent(), this.voiceFallbackMethod = const Omittable.absent(), this.voiceFallbackUrl = const Omittable.absent(), this.voiceCallerIdLookup = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.smsFallbackMethod = const Omittable.absent(), this.smsFallbackUrl = const Omittable.absent(), this.smsMethod = const Omittable.absent(), this.smsUrl = const Omittable.absent(), this.addressRequirements, this.capabilities = const Omittable.absent(), this.statusCallback = const Omittable.absent(), this.statusCallbackMethod = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.smsApplicationSid = const Omittable.absent(), this.voiceApplicationSid = const Omittable.absent(), this.trunkSid = const Omittable.absent(), this.emergencyStatus, this.emergencyAddressSid = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountAddressDependentPhoneNumber.fromJson(Map<String, dynamic> json) { return AccountAddressDependentPhoneNumber(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  phoneNumber: json.containsKey('phone_number') ? Omittable(json['phone_number'] as String?) : const Omittable.absent(),
  voiceUrl: json.containsKey('voice_url') ? Omittable(json['voice_url'] != null ? Uri.parse(json['voice_url'] as String) : null) : const Omittable.absent(),
  voiceMethod: json.containsKey('voice_method') ? Omittable(json['voice_method'] != null ? AccountAddressDependentPhoneNumberVoiceMethod.fromJson(json['voice_method'] as String) : null) : const Omittable.absent(),
  voiceFallbackMethod: json.containsKey('voice_fallback_method') ? Omittable(json['voice_fallback_method'] != null ? AccountAddressDependentPhoneNumberVoiceFallbackMethod.fromJson(json['voice_fallback_method'] as String) : null) : const Omittable.absent(),
  voiceFallbackUrl: json.containsKey('voice_fallback_url') ? Omittable(json['voice_fallback_url'] != null ? Uri.parse(json['voice_fallback_url'] as String) : null) : const Omittable.absent(),
  voiceCallerIdLookup: json.containsKey('voice_caller_id_lookup') ? Omittable(json['voice_caller_id_lookup'] as bool?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  smsFallbackMethod: json.containsKey('sms_fallback_method') ? Omittable(json['sms_fallback_method'] != null ? AccountAddressDependentPhoneNumberSmsFallbackMethod.fromJson(json['sms_fallback_method'] as String) : null) : const Omittable.absent(),
  smsFallbackUrl: json.containsKey('sms_fallback_url') ? Omittable(json['sms_fallback_url'] != null ? Uri.parse(json['sms_fallback_url'] as String) : null) : const Omittable.absent(),
  smsMethod: json.containsKey('sms_method') ? Omittable(json['sms_method'] != null ? AccountAddressDependentPhoneNumberSmsMethod.fromJson(json['sms_method'] as String) : null) : const Omittable.absent(),
  smsUrl: json.containsKey('sms_url') ? Omittable(json['sms_url'] != null ? Uri.parse(json['sms_url'] as String) : null) : const Omittable.absent(),
  addressRequirements: json['address_requirements'] != null ? DependentPhoneNumberEnumAddressRequirement.fromJson(json['address_requirements'] as String) : null,
  capabilities: json.containsKey('capabilities') ? Omittable(json['capabilities']) : const Omittable.absent(),
  statusCallback: json.containsKey('status_callback') ? Omittable(json['status_callback'] != null ? Uri.parse(json['status_callback'] as String) : null) : const Omittable.absent(),
  statusCallbackMethod: json.containsKey('status_callback_method') ? Omittable(json['status_callback_method'] != null ? AccountAddressDependentPhoneNumberStatusCallbackMethod.fromJson(json['status_callback_method'] as String) : null) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  smsApplicationSid: json.containsKey('sms_application_sid') ? Omittable(json['sms_application_sid'] as String?) : const Omittable.absent(),
  voiceApplicationSid: json.containsKey('voice_application_sid') ? Omittable(json['voice_application_sid'] as String?) : const Omittable.absent(),
  trunkSid: json.containsKey('trunk_sid') ? Omittable(json['trunk_sid'] as String?) : const Omittable.absent(),
  emergencyStatus: json['emergency_status'] != null ? DependentPhoneNumberEnumEmergencyStatus.fromJson(json['emergency_status'] as String) : null,
  emergencyAddressSid: json.containsKey('emergency_address_sid') ? Omittable(json['emergency_address_sid'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The unique string that that we created to identify the DependentPhoneNumber resource.
final Omittable<String?> sid;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the DependentPhoneNumber resource.
final Omittable<String?> accountSid;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The phone number in [E.164](https://www.twilio.com/docs/glossary/what-e164) format, which consists of a + followed by the country code and subscriber number.
final Omittable<String?> phoneNumber;

/// The URL we call when the phone number receives a call. The `voice_url` will not be used if a `voice_application_sid` or a `trunk_sid` is set.
final Omittable<Uri?> voiceUrl;

/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
final Omittable<AccountAddressDependentPhoneNumberVoiceMethod?> voiceMethod;

/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
final Omittable<AccountAddressDependentPhoneNumberVoiceFallbackMethod?> voiceFallbackMethod;

/// The URL that we call when an error occurs retrieving or executing the TwiML requested by `url`.
final Omittable<Uri?> voiceFallbackUrl;

/// Whether we look up the caller's caller-ID name from the CNAM database. Can be: `true` or `false`. Caller ID lookups can cost $0.01 each.
final Omittable<bool?> voiceCallerIdLookup;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
final Omittable<AccountAddressDependentPhoneNumberSmsFallbackMethod?> smsFallbackMethod;

/// The URL that we call when an error occurs while retrieving or executing the TwiML from `sms_url`.
final Omittable<Uri?> smsFallbackUrl;

/// The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
final Omittable<AccountAddressDependentPhoneNumberSmsMethod?> smsMethod;

/// The URL we call when the phone number receives an incoming SMS message.
final Omittable<Uri?> smsUrl;

final DependentPhoneNumberEnumAddressRequirement? addressRequirements;

/// The set of Boolean properties that indicates whether a phone number can receive calls or messages.  Capabilities are  `Voice`, `SMS`, and `MMS` and each capability can be: `true` or `false`.
final Omittable<dynamic> capabilities;

/// The URL we call using the `status_callback_method` to send status information to your application.
final Omittable<Uri?> statusCallback;

/// The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
final Omittable<AccountAddressDependentPhoneNumberStatusCallbackMethod?> statusCallbackMethod;

/// The API version used to start a new TwiML session.
final Omittable<String?> apiVersion;

/// The SID of the application that handles SMS messages sent to the phone number. If an `sms_application_sid` is present, we ignore all `sms_*_url` values and use those of the application.
final Omittable<String?> smsApplicationSid;

/// The SID of the application that handles calls to the phone number. If a `voice_application_sid` is present, we ignore all of the voice urls and use those set on the application. Setting a `voice_application_sid` will automatically delete your `trunk_sid` and vice versa.
final Omittable<String?> voiceApplicationSid;

/// The SID of the Trunk that handles calls to the phone number. If a `trunk_sid` is present, we ignore all of the voice urls and voice applications and use those set on the Trunk. Setting a `trunk_sid` will automatically delete your `voice_application_sid` and vice versa.
final Omittable<String?> trunkSid;

final DependentPhoneNumberEnumEmergencyStatus? emergencyStatus;

/// The SID of the emergency address configuration that we use for emergency calling from the phone number.
final Omittable<String?> emergencyAddressSid;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (phoneNumber.isPresent) 'phone_number': phoneNumber.value,
  if (voiceUrl.isPresent) 'voice_url': voiceUrl.value?.toString(),
  if (voiceMethod.isPresent) 'voice_method': voiceMethod.value?.toJson(),
  if (voiceFallbackMethod.isPresent) 'voice_fallback_method': voiceFallbackMethod.value?.toJson(),
  if (voiceFallbackUrl.isPresent) 'voice_fallback_url': voiceFallbackUrl.value?.toString(),
  if (voiceCallerIdLookup.isPresent) 'voice_caller_id_lookup': voiceCallerIdLookup.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (smsFallbackMethod.isPresent) 'sms_fallback_method': smsFallbackMethod.value?.toJson(),
  if (smsFallbackUrl.isPresent) 'sms_fallback_url': smsFallbackUrl.value?.toString(),
  if (smsMethod.isPresent) 'sms_method': smsMethod.value?.toJson(),
  if (smsUrl.isPresent) 'sms_url': smsUrl.value?.toString(),
  if (addressRequirements != null) 'address_requirements': addressRequirements?.toJson(),
  if (capabilities.isPresent) 'capabilities': capabilities.value,
  if (statusCallback.isPresent) 'status_callback': statusCallback.value?.toString(),
  if (statusCallbackMethod.isPresent) 'status_callback_method': statusCallbackMethod.value?.toJson(),
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (smsApplicationSid.isPresent) 'sms_application_sid': smsApplicationSid.value,
  if (voiceApplicationSid.isPresent) 'voice_application_sid': voiceApplicationSid.value,
  if (trunkSid.isPresent) 'trunk_sid': trunkSid.value,
  if (emergencyStatus != null) 'emergency_status': emergencyStatus?.toJson(),
  if (emergencyAddressSid.isPresent) 'emergency_address_sid': emergencyAddressSid.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'account_sid', 'friendly_name', 'phone_number', 'voice_url', 'voice_method', 'voice_fallback_method', 'voice_fallback_url', 'voice_caller_id_lookup', 'date_created', 'date_updated', 'sms_fallback_method', 'sms_fallback_url', 'sms_method', 'sms_url', 'address_requirements', 'capabilities', 'status_callback', 'status_callback_method', 'api_version', 'sms_application_sid', 'voice_application_sid', 'trunk_sid', 'emergency_status', 'emergency_address_sid', 'uri'}.contains(key)); } 
AccountAddressDependentPhoneNumber copyWith({Omittable<String?>? sid, Omittable<String?>? accountSid, Omittable<String?>? friendlyName, Omittable<String?>? phoneNumber, Omittable<Uri?>? voiceUrl, Omittable<AccountAddressDependentPhoneNumberVoiceMethod?>? voiceMethod, Omittable<AccountAddressDependentPhoneNumberVoiceFallbackMethod?>? voiceFallbackMethod, Omittable<Uri?>? voiceFallbackUrl, Omittable<bool?>? voiceCallerIdLookup, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<AccountAddressDependentPhoneNumberSmsFallbackMethod?>? smsFallbackMethod, Omittable<Uri?>? smsFallbackUrl, Omittable<AccountAddressDependentPhoneNumberSmsMethod?>? smsMethod, Omittable<Uri?>? smsUrl, DependentPhoneNumberEnumAddressRequirement? Function()? addressRequirements, Omittable<dynamic>? capabilities, Omittable<Uri?>? statusCallback, Omittable<AccountAddressDependentPhoneNumberStatusCallbackMethod?>? statusCallbackMethod, Omittable<String?>? apiVersion, Omittable<String?>? smsApplicationSid, Omittable<String?>? voiceApplicationSid, Omittable<String?>? trunkSid, DependentPhoneNumberEnumEmergencyStatus? Function()? emergencyStatus, Omittable<String?>? emergencyAddressSid, Omittable<String?>? uri, }) { return AccountAddressDependentPhoneNumber(
  sid: sid ?? this.sid,
  accountSid: accountSid ?? this.accountSid,
  friendlyName: friendlyName ?? this.friendlyName,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  voiceUrl: voiceUrl ?? this.voiceUrl,
  voiceMethod: voiceMethod ?? this.voiceMethod,
  voiceFallbackMethod: voiceFallbackMethod ?? this.voiceFallbackMethod,
  voiceFallbackUrl: voiceFallbackUrl ?? this.voiceFallbackUrl,
  voiceCallerIdLookup: voiceCallerIdLookup ?? this.voiceCallerIdLookup,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  smsFallbackMethod: smsFallbackMethod ?? this.smsFallbackMethod,
  smsFallbackUrl: smsFallbackUrl ?? this.smsFallbackUrl,
  smsMethod: smsMethod ?? this.smsMethod,
  smsUrl: smsUrl ?? this.smsUrl,
  addressRequirements: addressRequirements != null ? addressRequirements() : this.addressRequirements,
  capabilities: capabilities ?? this.capabilities,
  statusCallback: statusCallback ?? this.statusCallback,
  statusCallbackMethod: statusCallbackMethod ?? this.statusCallbackMethod,
  apiVersion: apiVersion ?? this.apiVersion,
  smsApplicationSid: smsApplicationSid ?? this.smsApplicationSid,
  voiceApplicationSid: voiceApplicationSid ?? this.voiceApplicationSid,
  trunkSid: trunkSid ?? this.trunkSid,
  emergencyStatus: emergencyStatus != null ? emergencyStatus() : this.emergencyStatus,
  emergencyAddressSid: emergencyAddressSid ?? this.emergencyAddressSid,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountAddressDependentPhoneNumber &&
          sid == other.sid &&
          accountSid == other.accountSid &&
          friendlyName == other.friendlyName &&
          phoneNumber == other.phoneNumber &&
          voiceUrl == other.voiceUrl &&
          voiceMethod == other.voiceMethod &&
          voiceFallbackMethod == other.voiceFallbackMethod &&
          voiceFallbackUrl == other.voiceFallbackUrl &&
          voiceCallerIdLookup == other.voiceCallerIdLookup &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          smsFallbackMethod == other.smsFallbackMethod &&
          smsFallbackUrl == other.smsFallbackUrl &&
          smsMethod == other.smsMethod &&
          smsUrl == other.smsUrl &&
          addressRequirements == other.addressRequirements &&
          capabilities == other.capabilities &&
          statusCallback == other.statusCallback &&
          statusCallbackMethod == other.statusCallbackMethod &&
          apiVersion == other.apiVersion &&
          smsApplicationSid == other.smsApplicationSid &&
          voiceApplicationSid == other.voiceApplicationSid &&
          trunkSid == other.trunkSid &&
          emergencyStatus == other.emergencyStatus &&
          emergencyAddressSid == other.emergencyAddressSid &&
          uri == other.uri; } 
@override int get hashCode { return Object.hashAll([sid, accountSid, friendlyName, phoneNumber, voiceUrl, voiceMethod, voiceFallbackMethod, voiceFallbackUrl, voiceCallerIdLookup, dateCreated, dateUpdated, smsFallbackMethod, smsFallbackUrl, smsMethod, smsUrl, addressRequirements, capabilities, statusCallback, statusCallbackMethod, apiVersion, smsApplicationSid, voiceApplicationSid, trunkSid, emergencyStatus, emergencyAddressSid, uri]); } 
@override String toString() { return 'AccountAddressDependentPhoneNumber(sid: $sid, accountSid: $accountSid, friendlyName: $friendlyName, phoneNumber: $phoneNumber, voiceUrl: $voiceUrl, voiceMethod: $voiceMethod, voiceFallbackMethod: $voiceFallbackMethod, voiceFallbackUrl: $voiceFallbackUrl, voiceCallerIdLookup: $voiceCallerIdLookup, dateCreated: $dateCreated, dateUpdated: $dateUpdated, smsFallbackMethod: $smsFallbackMethod, smsFallbackUrl: $smsFallbackUrl, smsMethod: $smsMethod, smsUrl: $smsUrl, addressRequirements: $addressRequirements, capabilities: $capabilities, statusCallback: $statusCallback, statusCallbackMethod: $statusCallbackMethod, apiVersion: $apiVersion, smsApplicationSid: $smsApplicationSid, voiceApplicationSid: $voiceApplicationSid, trunkSid: $trunkSid, emergencyStatus: $emergencyStatus, emergencyAddressSid: $emergencyAddressSid, uri: $uri)'; } 
 }

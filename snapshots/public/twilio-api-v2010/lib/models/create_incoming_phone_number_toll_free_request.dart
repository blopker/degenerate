// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'incoming_phone_number_toll_free_enum_emergency_status.dart';import 'incoming_phone_number_toll_free_enum_voice_receive_mode.dart';/// The HTTP method that we should use to call `sms_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod {const CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod._(this.value);

factory CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod._(json),
}; }

static const CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod $get = CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod._('GET');

static const CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod post = CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod._('POST');

static const List<CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod($value)'; } 
 }
/// The HTTP method that we should use to call `sms_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateIncomingPhoneNumberTollFreeRequestSmsMethod {const CreateIncomingPhoneNumberTollFreeRequestSmsMethod._(this.value);

factory CreateIncomingPhoneNumberTollFreeRequestSmsMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateIncomingPhoneNumberTollFreeRequestSmsMethod._(json),
}; }

static const CreateIncomingPhoneNumberTollFreeRequestSmsMethod $get = CreateIncomingPhoneNumberTollFreeRequestSmsMethod._('GET');

static const CreateIncomingPhoneNumberTollFreeRequestSmsMethod post = CreateIncomingPhoneNumberTollFreeRequestSmsMethod._('POST');

static const List<CreateIncomingPhoneNumberTollFreeRequestSmsMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateIncomingPhoneNumberTollFreeRequestSmsMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateIncomingPhoneNumberTollFreeRequestSmsMethod($value)'; } 
 }
/// The HTTP method we should use to call `status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod {const CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod._(this.value);

factory CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod._(json),
}; }

static const CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod $get = CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod._('GET');

static const CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod post = CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod._('POST');

static const List<CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod($value)'; } 
 }
/// The HTTP method that we should use to call `voice_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod {const CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod._(this.value);

factory CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod._(json),
}; }

static const CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod $get = CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod._('GET');

static const CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod post = CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod._('POST');

static const List<CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod($value)'; } 
 }
/// The HTTP method that we should use to call `voice_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateIncomingPhoneNumberTollFreeRequestVoiceMethod {const CreateIncomingPhoneNumberTollFreeRequestVoiceMethod._(this.value);

factory CreateIncomingPhoneNumberTollFreeRequestVoiceMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateIncomingPhoneNumberTollFreeRequestVoiceMethod._(json),
}; }

static const CreateIncomingPhoneNumberTollFreeRequestVoiceMethod $get = CreateIncomingPhoneNumberTollFreeRequestVoiceMethod._('GET');

static const CreateIncomingPhoneNumberTollFreeRequestVoiceMethod post = CreateIncomingPhoneNumberTollFreeRequestVoiceMethod._('POST');

static const List<CreateIncomingPhoneNumberTollFreeRequestVoiceMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateIncomingPhoneNumberTollFreeRequestVoiceMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateIncomingPhoneNumberTollFreeRequestVoiceMethod($value)'; } 
 }
@immutable final class CreateIncomingPhoneNumberTollFreeRequest {const CreateIncomingPhoneNumberTollFreeRequest({required this.phoneNumber, this.apiVersion, this.friendlyName, this.smsApplicationSid, this.smsFallbackMethod, this.smsFallbackUrl, this.smsMethod, this.smsUrl, this.statusCallback, this.statusCallbackMethod, this.voiceApplicationSid, this.voiceCallerIdLookup, this.voiceFallbackMethod, this.voiceFallbackUrl, this.voiceMethod, this.voiceUrl, this.identitySid, this.addressSid, this.emergencyStatus, this.emergencyAddressSid, this.trunkSid, this.voiceReceiveMode, this.bundleSid, });

factory CreateIncomingPhoneNumberTollFreeRequest.fromJson(Map<String, dynamic> json) { return CreateIncomingPhoneNumberTollFreeRequest(
  phoneNumber: json['PhoneNumber'] as String,
  apiVersion: json['ApiVersion'] as String?,
  friendlyName: json['FriendlyName'] as String?,
  smsApplicationSid: json['SmsApplicationSid'] as String?,
  smsFallbackMethod: json['SmsFallbackMethod'] != null ? CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod.fromJson(json['SmsFallbackMethod'] as String) : null,
  smsFallbackUrl: json['SmsFallbackUrl'] != null ? Uri.parse(json['SmsFallbackUrl'] as String) : null,
  smsMethod: json['SmsMethod'] != null ? CreateIncomingPhoneNumberTollFreeRequestSmsMethod.fromJson(json['SmsMethod'] as String) : null,
  smsUrl: json['SmsUrl'] != null ? Uri.parse(json['SmsUrl'] as String) : null,
  statusCallback: json['StatusCallback'] != null ? Uri.parse(json['StatusCallback'] as String) : null,
  statusCallbackMethod: json['StatusCallbackMethod'] != null ? CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod.fromJson(json['StatusCallbackMethod'] as String) : null,
  voiceApplicationSid: json['VoiceApplicationSid'] as String?,
  voiceCallerIdLookup: json['VoiceCallerIdLookup'] as bool?,
  voiceFallbackMethod: json['VoiceFallbackMethod'] != null ? CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod.fromJson(json['VoiceFallbackMethod'] as String) : null,
  voiceFallbackUrl: json['VoiceFallbackUrl'] != null ? Uri.parse(json['VoiceFallbackUrl'] as String) : null,
  voiceMethod: json['VoiceMethod'] != null ? CreateIncomingPhoneNumberTollFreeRequestVoiceMethod.fromJson(json['VoiceMethod'] as String) : null,
  voiceUrl: json['VoiceUrl'] != null ? Uri.parse(json['VoiceUrl'] as String) : null,
  identitySid: json['IdentitySid'] as String?,
  addressSid: json['AddressSid'] as String?,
  emergencyStatus: json['EmergencyStatus'] != null ? IncomingPhoneNumberTollFreeEnumEmergencyStatus.fromJson(json['EmergencyStatus'] as String) : null,
  emergencyAddressSid: json['EmergencyAddressSid'] as String?,
  trunkSid: json['TrunkSid'] as String?,
  voiceReceiveMode: json['VoiceReceiveMode'] != null ? IncomingPhoneNumberTollFreeEnumVoiceReceiveMode.fromJson(json['VoiceReceiveMode'] as String) : null,
  bundleSid: json['BundleSid'] as String?,
); }

/// The phone number to purchase specified in [E.164](https://www.twilio.com/docs/glossary/what-e164) format.  E.164 phone numbers consist of a + followed by the country code and subscriber number without punctuation characters. For example, +14155551234.
final String phoneNumber;

/// The API version to use for incoming calls made to the new phone number. The default is `2010-04-01`.
final String? apiVersion;

/// A descriptive string that you created to describe the new phone number. It can be up to 64 characters long. By default, this is a formatted version of the phone number.
final String? friendlyName;

/// The SID of the application that should handle SMS messages sent to the new phone number. If an `sms_application_sid` is present, we ignore all `sms_*_url` values and use those of the application.
final String? smsApplicationSid;

/// The HTTP method that we should use to call `sms_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod? smsFallbackMethod;

/// The URL that we should call when an error occurs while requesting or executing the TwiML defined by `sms_url`.
final Uri? smsFallbackUrl;

/// The HTTP method that we should use to call `sms_url`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateIncomingPhoneNumberTollFreeRequestSmsMethod? smsMethod;

/// The URL we should call when the new phone number receives an incoming SMS message.
final Uri? smsUrl;

/// The URL we should call using the `status_callback_method` to send status information to your application.
final Uri? statusCallback;

/// The HTTP method we should use to call `status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod? statusCallbackMethod;

/// The SID of the application we should use to handle calls to the new phone number. If a `voice_application_sid` is present, we ignore all of the voice urls and use those set on the application. Setting a `voice_application_sid` will automatically delete your `trunk_sid` and vice versa.
final String? voiceApplicationSid;

/// Whether to lookup the caller's name from the CNAM database and post it to your app. Can be: `true` or `false` and defaults to `false`.
final bool? voiceCallerIdLookup;

/// The HTTP method that we should use to call `voice_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod? voiceFallbackMethod;

/// The URL that we should call when an error occurs retrieving or executing the TwiML requested by `url`.
final Uri? voiceFallbackUrl;

/// The HTTP method that we should use to call `voice_url`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateIncomingPhoneNumberTollFreeRequestVoiceMethod? voiceMethod;

/// The URL that we should call to answer a call to the new phone number. The `voice_url` will not be called if a `voice_application_sid` or a `trunk_sid` is set.
final Uri? voiceUrl;

/// The SID of the Identity resource that we should associate with the new phone number. Some regions require an Identity to meet local regulations.
final String? identitySid;

/// The SID of the Address resource we should associate with the new phone number. Some regions require addresses to meet local regulations.
final String? addressSid;

/// The parameter displays if emergency calling is enabled for this number. Active numbers may place emergency calls by dialing valid emergency numbers for the country.
final IncomingPhoneNumberTollFreeEnumEmergencyStatus? emergencyStatus;

/// The SID of the emergency address configuration to use for emergency calling from the new phone number.
final String? emergencyAddressSid;

/// The SID of the Trunk we should use to handle calls to the new phone number. If a `trunk_sid` is present, we ignore all of the voice urls and voice applications and use only those set on the Trunk. Setting a `trunk_sid` will automatically delete your `voice_application_sid` and vice versa.
final String? trunkSid;

final IncomingPhoneNumberTollFreeEnumVoiceReceiveMode? voiceReceiveMode;

/// The SID of the Bundle resource that you associate with the phone number. Some regions require a Bundle to meet local Regulations.
final String? bundleSid;

Map<String, dynamic> toJson() { return {
  'PhoneNumber': phoneNumber,
  'ApiVersion': ?apiVersion,
  'FriendlyName': ?friendlyName,
  'SmsApplicationSid': ?smsApplicationSid,
  if (smsFallbackMethod != null) 'SmsFallbackMethod': smsFallbackMethod?.toJson(),
  if (smsFallbackUrl != null) 'SmsFallbackUrl': smsFallbackUrl?.toString(),
  if (smsMethod != null) 'SmsMethod': smsMethod?.toJson(),
  if (smsUrl != null) 'SmsUrl': smsUrl?.toString(),
  if (statusCallback != null) 'StatusCallback': statusCallback?.toString(),
  if (statusCallbackMethod != null) 'StatusCallbackMethod': statusCallbackMethod?.toJson(),
  'VoiceApplicationSid': ?voiceApplicationSid,
  'VoiceCallerIdLookup': ?voiceCallerIdLookup,
  if (voiceFallbackMethod != null) 'VoiceFallbackMethod': voiceFallbackMethod?.toJson(),
  if (voiceFallbackUrl != null) 'VoiceFallbackUrl': voiceFallbackUrl?.toString(),
  if (voiceMethod != null) 'VoiceMethod': voiceMethod?.toJson(),
  if (voiceUrl != null) 'VoiceUrl': voiceUrl?.toString(),
  'IdentitySid': ?identitySid,
  'AddressSid': ?addressSid,
  if (emergencyStatus != null) 'EmergencyStatus': emergencyStatus?.toJson(),
  'EmergencyAddressSid': ?emergencyAddressSid,
  'TrunkSid': ?trunkSid,
  if (voiceReceiveMode != null) 'VoiceReceiveMode': voiceReceiveMode?.toJson(),
  'BundleSid': ?bundleSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('PhoneNumber') && json['PhoneNumber'] is String; } 
CreateIncomingPhoneNumberTollFreeRequest copyWith({String? phoneNumber, String Function()? apiVersion, String Function()? friendlyName, String Function()? smsApplicationSid, CreateIncomingPhoneNumberTollFreeRequestSmsFallbackMethod Function()? smsFallbackMethod, Uri Function()? smsFallbackUrl, CreateIncomingPhoneNumberTollFreeRequestSmsMethod Function()? smsMethod, Uri Function()? smsUrl, Uri Function()? statusCallback, CreateIncomingPhoneNumberTollFreeRequestStatusCallbackMethod Function()? statusCallbackMethod, String Function()? voiceApplicationSid, bool Function()? voiceCallerIdLookup, CreateIncomingPhoneNumberTollFreeRequestVoiceFallbackMethod Function()? voiceFallbackMethod, Uri Function()? voiceFallbackUrl, CreateIncomingPhoneNumberTollFreeRequestVoiceMethod Function()? voiceMethod, Uri Function()? voiceUrl, String Function()? identitySid, String Function()? addressSid, IncomingPhoneNumberTollFreeEnumEmergencyStatus Function()? emergencyStatus, String Function()? emergencyAddressSid, String Function()? trunkSid, IncomingPhoneNumberTollFreeEnumVoiceReceiveMode Function()? voiceReceiveMode, String Function()? bundleSid, }) { return CreateIncomingPhoneNumberTollFreeRequest(
  phoneNumber: phoneNumber ?? this.phoneNumber,
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  smsApplicationSid: smsApplicationSid != null ? smsApplicationSid() : this.smsApplicationSid,
  smsFallbackMethod: smsFallbackMethod != null ? smsFallbackMethod() : this.smsFallbackMethod,
  smsFallbackUrl: smsFallbackUrl != null ? smsFallbackUrl() : this.smsFallbackUrl,
  smsMethod: smsMethod != null ? smsMethod() : this.smsMethod,
  smsUrl: smsUrl != null ? smsUrl() : this.smsUrl,
  statusCallback: statusCallback != null ? statusCallback() : this.statusCallback,
  statusCallbackMethod: statusCallbackMethod != null ? statusCallbackMethod() : this.statusCallbackMethod,
  voiceApplicationSid: voiceApplicationSid != null ? voiceApplicationSid() : this.voiceApplicationSid,
  voiceCallerIdLookup: voiceCallerIdLookup != null ? voiceCallerIdLookup() : this.voiceCallerIdLookup,
  voiceFallbackMethod: voiceFallbackMethod != null ? voiceFallbackMethod() : this.voiceFallbackMethod,
  voiceFallbackUrl: voiceFallbackUrl != null ? voiceFallbackUrl() : this.voiceFallbackUrl,
  voiceMethod: voiceMethod != null ? voiceMethod() : this.voiceMethod,
  voiceUrl: voiceUrl != null ? voiceUrl() : this.voiceUrl,
  identitySid: identitySid != null ? identitySid() : this.identitySid,
  addressSid: addressSid != null ? addressSid() : this.addressSid,
  emergencyStatus: emergencyStatus != null ? emergencyStatus() : this.emergencyStatus,
  emergencyAddressSid: emergencyAddressSid != null ? emergencyAddressSid() : this.emergencyAddressSid,
  trunkSid: trunkSid != null ? trunkSid() : this.trunkSid,
  voiceReceiveMode: voiceReceiveMode != null ? voiceReceiveMode() : this.voiceReceiveMode,
  bundleSid: bundleSid != null ? bundleSid() : this.bundleSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateIncomingPhoneNumberTollFreeRequest &&
          phoneNumber == other.phoneNumber &&
          apiVersion == other.apiVersion &&
          friendlyName == other.friendlyName &&
          smsApplicationSid == other.smsApplicationSid &&
          smsFallbackMethod == other.smsFallbackMethod &&
          smsFallbackUrl == other.smsFallbackUrl &&
          smsMethod == other.smsMethod &&
          smsUrl == other.smsUrl &&
          statusCallback == other.statusCallback &&
          statusCallbackMethod == other.statusCallbackMethod &&
          voiceApplicationSid == other.voiceApplicationSid &&
          voiceCallerIdLookup == other.voiceCallerIdLookup &&
          voiceFallbackMethod == other.voiceFallbackMethod &&
          voiceFallbackUrl == other.voiceFallbackUrl &&
          voiceMethod == other.voiceMethod &&
          voiceUrl == other.voiceUrl &&
          identitySid == other.identitySid &&
          addressSid == other.addressSid &&
          emergencyStatus == other.emergencyStatus &&
          emergencyAddressSid == other.emergencyAddressSid &&
          trunkSid == other.trunkSid &&
          voiceReceiveMode == other.voiceReceiveMode &&
          bundleSid == other.bundleSid; } 
@override int get hashCode { return Object.hashAll([phoneNumber, apiVersion, friendlyName, smsApplicationSid, smsFallbackMethod, smsFallbackUrl, smsMethod, smsUrl, statusCallback, statusCallbackMethod, voiceApplicationSid, voiceCallerIdLookup, voiceFallbackMethod, voiceFallbackUrl, voiceMethod, voiceUrl, identitySid, addressSid, emergencyStatus, emergencyAddressSid, trunkSid, voiceReceiveMode, bundleSid]); } 
@override String toString() { return 'CreateIncomingPhoneNumberTollFreeRequest(phoneNumber: $phoneNumber, apiVersion: $apiVersion, friendlyName: $friendlyName, smsApplicationSid: $smsApplicationSid, smsFallbackMethod: $smsFallbackMethod, smsFallbackUrl: $smsFallbackUrl, smsMethod: $smsMethod, smsUrl: $smsUrl, statusCallback: $statusCallback, statusCallbackMethod: $statusCallbackMethod, voiceApplicationSid: $voiceApplicationSid, voiceCallerIdLookup: $voiceCallerIdLookup, voiceFallbackMethod: $voiceFallbackMethod, voiceFallbackUrl: $voiceFallbackUrl, voiceMethod: $voiceMethod, voiceUrl: $voiceUrl, identitySid: $identitySid, addressSid: $addressSid, emergencyStatus: $emergencyStatus, emergencyAddressSid: $emergencyAddressSid, trunkSid: $trunkSid, voiceReceiveMode: $voiceReceiveMode, bundleSid: $bundleSid)'; } 
 }

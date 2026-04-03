// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'incoming_phone_number_enum_emergency_status.dart';import 'incoming_phone_number_enum_voice_receive_mode.dart';/// The HTTP method that we should use to call `sms_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class UpdateIncomingPhoneNumberRequestSmsFallbackMethod {const UpdateIncomingPhoneNumberRequestSmsFallbackMethod._(this.value);

factory UpdateIncomingPhoneNumberRequestSmsFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateIncomingPhoneNumberRequestSmsFallbackMethod._(json),
}; }

static const UpdateIncomingPhoneNumberRequestSmsFallbackMethod $get = UpdateIncomingPhoneNumberRequestSmsFallbackMethod._('GET');

static const UpdateIncomingPhoneNumberRequestSmsFallbackMethod post = UpdateIncomingPhoneNumberRequestSmsFallbackMethod._('POST');

static const List<UpdateIncomingPhoneNumberRequestSmsFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateIncomingPhoneNumberRequestSmsFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateIncomingPhoneNumberRequestSmsFallbackMethod($value)'; } 
 }
/// The HTTP method that we should use to call `sms_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class UpdateIncomingPhoneNumberRequestSmsMethod {const UpdateIncomingPhoneNumberRequestSmsMethod._(this.value);

factory UpdateIncomingPhoneNumberRequestSmsMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateIncomingPhoneNumberRequestSmsMethod._(json),
}; }

static const UpdateIncomingPhoneNumberRequestSmsMethod $get = UpdateIncomingPhoneNumberRequestSmsMethod._('GET');

static const UpdateIncomingPhoneNumberRequestSmsMethod post = UpdateIncomingPhoneNumberRequestSmsMethod._('POST');

static const List<UpdateIncomingPhoneNumberRequestSmsMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateIncomingPhoneNumberRequestSmsMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateIncomingPhoneNumberRequestSmsMethod($value)'; } 
 }
/// The HTTP method we should use to call `status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class UpdateIncomingPhoneNumberRequestStatusCallbackMethod {const UpdateIncomingPhoneNumberRequestStatusCallbackMethod._(this.value);

factory UpdateIncomingPhoneNumberRequestStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateIncomingPhoneNumberRequestStatusCallbackMethod._(json),
}; }

static const UpdateIncomingPhoneNumberRequestStatusCallbackMethod $get = UpdateIncomingPhoneNumberRequestStatusCallbackMethod._('GET');

static const UpdateIncomingPhoneNumberRequestStatusCallbackMethod post = UpdateIncomingPhoneNumberRequestStatusCallbackMethod._('POST');

static const List<UpdateIncomingPhoneNumberRequestStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateIncomingPhoneNumberRequestStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateIncomingPhoneNumberRequestStatusCallbackMethod($value)'; } 
 }
/// The HTTP method that we should use to call `voice_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class UpdateIncomingPhoneNumberRequestVoiceFallbackMethod {const UpdateIncomingPhoneNumberRequestVoiceFallbackMethod._(this.value);

factory UpdateIncomingPhoneNumberRequestVoiceFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateIncomingPhoneNumberRequestVoiceFallbackMethod._(json),
}; }

static const UpdateIncomingPhoneNumberRequestVoiceFallbackMethod $get = UpdateIncomingPhoneNumberRequestVoiceFallbackMethod._('GET');

static const UpdateIncomingPhoneNumberRequestVoiceFallbackMethod post = UpdateIncomingPhoneNumberRequestVoiceFallbackMethod._('POST');

static const List<UpdateIncomingPhoneNumberRequestVoiceFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateIncomingPhoneNumberRequestVoiceFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateIncomingPhoneNumberRequestVoiceFallbackMethod($value)'; } 
 }
/// The HTTP method that we should use to call `voice_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class UpdateIncomingPhoneNumberRequestVoiceMethod {const UpdateIncomingPhoneNumberRequestVoiceMethod._(this.value);

factory UpdateIncomingPhoneNumberRequestVoiceMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateIncomingPhoneNumberRequestVoiceMethod._(json),
}; }

static const UpdateIncomingPhoneNumberRequestVoiceMethod $get = UpdateIncomingPhoneNumberRequestVoiceMethod._('GET');

static const UpdateIncomingPhoneNumberRequestVoiceMethod post = UpdateIncomingPhoneNumberRequestVoiceMethod._('POST');

static const List<UpdateIncomingPhoneNumberRequestVoiceMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateIncomingPhoneNumberRequestVoiceMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateIncomingPhoneNumberRequestVoiceMethod($value)'; } 
 }
@immutable final class UpdateIncomingPhoneNumberRequest {const UpdateIncomingPhoneNumberRequest({this.accountSid, this.apiVersion, this.friendlyName, this.smsApplicationSid, this.smsFallbackMethod, this.smsFallbackUrl, this.smsMethod, this.smsUrl, this.statusCallback, this.statusCallbackMethod, this.voiceApplicationSid, this.voiceCallerIdLookup, this.voiceFallbackMethod, this.voiceFallbackUrl, this.voiceMethod, this.voiceUrl, this.emergencyStatus, this.emergencyAddressSid, this.trunkSid, this.voiceReceiveMode, this.identitySid, this.addressSid, this.bundleSid, });

factory UpdateIncomingPhoneNumberRequest.fromJson(Map<String, dynamic> json) { return UpdateIncomingPhoneNumberRequest(
  accountSid: json['AccountSid'] as String?,
  apiVersion: json['ApiVersion'] as String?,
  friendlyName: json['FriendlyName'] as String?,
  smsApplicationSid: json['SmsApplicationSid'] as String?,
  smsFallbackMethod: json['SmsFallbackMethod'] != null ? UpdateIncomingPhoneNumberRequestSmsFallbackMethod.fromJson(json['SmsFallbackMethod'] as String) : null,
  smsFallbackUrl: json['SmsFallbackUrl'] != null ? Uri.parse(json['SmsFallbackUrl'] as String) : null,
  smsMethod: json['SmsMethod'] != null ? UpdateIncomingPhoneNumberRequestSmsMethod.fromJson(json['SmsMethod'] as String) : null,
  smsUrl: json['SmsUrl'] != null ? Uri.parse(json['SmsUrl'] as String) : null,
  statusCallback: json['StatusCallback'] != null ? Uri.parse(json['StatusCallback'] as String) : null,
  statusCallbackMethod: json['StatusCallbackMethod'] != null ? UpdateIncomingPhoneNumberRequestStatusCallbackMethod.fromJson(json['StatusCallbackMethod'] as String) : null,
  voiceApplicationSid: json['VoiceApplicationSid'] as String?,
  voiceCallerIdLookup: json['VoiceCallerIdLookup'] as bool?,
  voiceFallbackMethod: json['VoiceFallbackMethod'] != null ? UpdateIncomingPhoneNumberRequestVoiceFallbackMethod.fromJson(json['VoiceFallbackMethod'] as String) : null,
  voiceFallbackUrl: json['VoiceFallbackUrl'] != null ? Uri.parse(json['VoiceFallbackUrl'] as String) : null,
  voiceMethod: json['VoiceMethod'] != null ? UpdateIncomingPhoneNumberRequestVoiceMethod.fromJson(json['VoiceMethod'] as String) : null,
  voiceUrl: json['VoiceUrl'] != null ? Uri.parse(json['VoiceUrl'] as String) : null,
  emergencyStatus: json['EmergencyStatus'] != null ? IncomingPhoneNumberEnumEmergencyStatus.fromJson(json['EmergencyStatus'] as String) : null,
  emergencyAddressSid: json['EmergencyAddressSid'] as String?,
  trunkSid: json['TrunkSid'] as String?,
  voiceReceiveMode: json['VoiceReceiveMode'] != null ? IncomingPhoneNumberEnumVoiceReceiveMode.fromJson(json['VoiceReceiveMode'] as String) : null,
  identitySid: json['IdentitySid'] as String?,
  addressSid: json['AddressSid'] as String?,
  bundleSid: json['BundleSid'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the IncomingPhoneNumber resource to update.  For more information, see [Exchanging Numbers Between Subaccounts](https://www.twilio.com/docs/iam/api/subaccounts#exchanging-numbers).
final String? accountSid;

/// The API version to use for incoming calls made to the phone number. The default is `2010-04-01`.
final String? apiVersion;

/// A descriptive string that you created to describe this phone number. It can be up to 64 characters long. By default, this is a formatted version of the phone number.
final String? friendlyName;

/// The SID of the application that should handle SMS messages sent to the number. If an `sms_application_sid` is present, we ignore all of the `sms_*_url` urls and use those set on the application.
final String? smsApplicationSid;

/// The HTTP method that we should use to call `sms_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
final UpdateIncomingPhoneNumberRequestSmsFallbackMethod? smsFallbackMethod;

/// The URL that we should call when an error occurs while requesting or executing the TwiML defined by `sms_url`.
final Uri? smsFallbackUrl;

/// The HTTP method that we should use to call `sms_url`. Can be: `GET` or `POST` and defaults to `POST`.
final UpdateIncomingPhoneNumberRequestSmsMethod? smsMethod;

/// The URL we should call when the phone number receives an incoming SMS message.
final Uri? smsUrl;

/// The URL we should call using the `status_callback_method` to send status information to your application.
final Uri? statusCallback;

/// The HTTP method we should use to call `status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
final UpdateIncomingPhoneNumberRequestStatusCallbackMethod? statusCallbackMethod;

/// The SID of the application we should use to handle phone calls to the phone number. If a `voice_application_sid` is present, we ignore all of the voice urls and use only those set on the application. Setting a `voice_application_sid` will automatically delete your `trunk_sid` and vice versa.
final String? voiceApplicationSid;

/// Whether to lookup the caller's name from the CNAM database and post it to your app. Can be: `true` or `false` and defaults to `false`.
final bool? voiceCallerIdLookup;

/// The HTTP method that we should use to call `voice_fallback_url`. Can be: `GET` or `POST` and defaults to `POST`.
final UpdateIncomingPhoneNumberRequestVoiceFallbackMethod? voiceFallbackMethod;

/// The URL that we should call when an error occurs retrieving or executing the TwiML requested by `url`.
final Uri? voiceFallbackUrl;

/// The HTTP method that we should use to call `voice_url`. Can be: `GET` or `POST` and defaults to `POST`.
final UpdateIncomingPhoneNumberRequestVoiceMethod? voiceMethod;

/// The URL that we should call to answer a call to the phone number. The `voice_url` will not be called if a `voice_application_sid` or a `trunk_sid` is set.
final Uri? voiceUrl;

/// The parameter displays if emergency calling is enabled for this number. Active numbers may place emergency calls by dialing valid emergency numbers for the country.
final IncomingPhoneNumberEnumEmergencyStatus? emergencyStatus;

/// The SID of the emergency address configuration to use for emergency calling from this phone number.
final String? emergencyAddressSid;

/// The SID of the Trunk we should use to handle phone calls to the phone number. If a `trunk_sid` is present, we ignore all of the voice urls and voice applications and use only those set on the Trunk. Setting a `trunk_sid` will automatically delete your `voice_application_sid` and vice versa.
final String? trunkSid;

final IncomingPhoneNumberEnumVoiceReceiveMode? voiceReceiveMode;

/// The SID of the Identity resource that we should associate with the phone number. Some regions require an identity to meet local regulations.
final String? identitySid;

/// The SID of the Address resource we should associate with the phone number. Some regions require addresses to meet local regulations.
final String? addressSid;

/// The SID of the Bundle resource that you associate with the phone number. Some regions require a Bundle to meet local Regulations.
final String? bundleSid;

Map<String, dynamic> toJson() { return {
  'AccountSid': ?accountSid,
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
  if (emergencyStatus != null) 'EmergencyStatus': emergencyStatus?.toJson(),
  'EmergencyAddressSid': ?emergencyAddressSid,
  'TrunkSid': ?trunkSid,
  if (voiceReceiveMode != null) 'VoiceReceiveMode': voiceReceiveMode?.toJson(),
  'IdentitySid': ?identitySid,
  'AddressSid': ?addressSid,
  'BundleSid': ?bundleSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'AccountSid', 'ApiVersion', 'FriendlyName', 'SmsApplicationSid', 'SmsFallbackMethod', 'SmsFallbackUrl', 'SmsMethod', 'SmsUrl', 'StatusCallback', 'StatusCallbackMethod', 'VoiceApplicationSid', 'VoiceCallerIdLookup', 'VoiceFallbackMethod', 'VoiceFallbackUrl', 'VoiceMethod', 'VoiceUrl', 'EmergencyStatus', 'EmergencyAddressSid', 'TrunkSid', 'VoiceReceiveMode', 'IdentitySid', 'AddressSid', 'BundleSid'}.contains(key)); } 
UpdateIncomingPhoneNumberRequest copyWith({String Function()? accountSid, String Function()? apiVersion, String Function()? friendlyName, String Function()? smsApplicationSid, UpdateIncomingPhoneNumberRequestSmsFallbackMethod Function()? smsFallbackMethod, Uri Function()? smsFallbackUrl, UpdateIncomingPhoneNumberRequestSmsMethod Function()? smsMethod, Uri Function()? smsUrl, Uri Function()? statusCallback, UpdateIncomingPhoneNumberRequestStatusCallbackMethod Function()? statusCallbackMethod, String Function()? voiceApplicationSid, bool Function()? voiceCallerIdLookup, UpdateIncomingPhoneNumberRequestVoiceFallbackMethod Function()? voiceFallbackMethod, Uri Function()? voiceFallbackUrl, UpdateIncomingPhoneNumberRequestVoiceMethod Function()? voiceMethod, Uri Function()? voiceUrl, IncomingPhoneNumberEnumEmergencyStatus Function()? emergencyStatus, String Function()? emergencyAddressSid, String Function()? trunkSid, IncomingPhoneNumberEnumVoiceReceiveMode Function()? voiceReceiveMode, String Function()? identitySid, String Function()? addressSid, String Function()? bundleSid, }) { return UpdateIncomingPhoneNumberRequest(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
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
  emergencyStatus: emergencyStatus != null ? emergencyStatus() : this.emergencyStatus,
  emergencyAddressSid: emergencyAddressSid != null ? emergencyAddressSid() : this.emergencyAddressSid,
  trunkSid: trunkSid != null ? trunkSid() : this.trunkSid,
  voiceReceiveMode: voiceReceiveMode != null ? voiceReceiveMode() : this.voiceReceiveMode,
  identitySid: identitySid != null ? identitySid() : this.identitySid,
  addressSid: addressSid != null ? addressSid() : this.addressSid,
  bundleSid: bundleSid != null ? bundleSid() : this.bundleSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateIncomingPhoneNumberRequest &&
          accountSid == other.accountSid &&
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
          emergencyStatus == other.emergencyStatus &&
          emergencyAddressSid == other.emergencyAddressSid &&
          trunkSid == other.trunkSid &&
          voiceReceiveMode == other.voiceReceiveMode &&
          identitySid == other.identitySid &&
          addressSid == other.addressSid &&
          bundleSid == other.bundleSid; } 
@override int get hashCode { return Object.hashAll([accountSid, apiVersion, friendlyName, smsApplicationSid, smsFallbackMethod, smsFallbackUrl, smsMethod, smsUrl, statusCallback, statusCallbackMethod, voiceApplicationSid, voiceCallerIdLookup, voiceFallbackMethod, voiceFallbackUrl, voiceMethod, voiceUrl, emergencyStatus, emergencyAddressSid, trunkSid, voiceReceiveMode, identitySid, addressSid, bundleSid]); } 
@override String toString() { return 'UpdateIncomingPhoneNumberRequest(accountSid: $accountSid, apiVersion: $apiVersion, friendlyName: $friendlyName, smsApplicationSid: $smsApplicationSid, smsFallbackMethod: $smsFallbackMethod, smsFallbackUrl: $smsFallbackUrl, smsMethod: $smsMethod, smsUrl: $smsUrl, statusCallback: $statusCallback, statusCallbackMethod: $statusCallbackMethod, voiceApplicationSid: $voiceApplicationSid, voiceCallerIdLookup: $voiceCallerIdLookup, voiceFallbackMethod: $voiceFallbackMethod, voiceFallbackUrl: $voiceFallbackUrl, voiceMethod: $voiceMethod, voiceUrl: $voiceUrl, emergencyStatus: $emergencyStatus, emergencyAddressSid: $emergencyAddressSid, trunkSid: $trunkSid, voiceReceiveMode: $voiceReceiveMode, identitySid: $identitySid, addressSid: $addressSid, bundleSid: $bundleSid)'; } 
 }

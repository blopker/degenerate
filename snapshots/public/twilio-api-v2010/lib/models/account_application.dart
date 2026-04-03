// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountApplicationSmsFallbackMethod {const AccountApplicationSmsFallbackMethod._(this.value);

factory AccountApplicationSmsFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountApplicationSmsFallbackMethod._(json),
}; }

static const AccountApplicationSmsFallbackMethod $get = AccountApplicationSmsFallbackMethod._('GET');

static const AccountApplicationSmsFallbackMethod post = AccountApplicationSmsFallbackMethod._('POST');

static const List<AccountApplicationSmsFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountApplicationSmsFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountApplicationSmsFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
@immutable final class AccountApplicationSmsMethod {const AccountApplicationSmsMethod._(this.value);

factory AccountApplicationSmsMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountApplicationSmsMethod._(json),
}; }

static const AccountApplicationSmsMethod $get = AccountApplicationSmsMethod._('GET');

static const AccountApplicationSmsMethod post = AccountApplicationSmsMethod._('POST');

static const List<AccountApplicationSmsMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountApplicationSmsMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountApplicationSmsMethod($value)'; } 
 }
/// The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
@immutable final class AccountApplicationStatusCallbackMethod {const AccountApplicationStatusCallbackMethod._(this.value);

factory AccountApplicationStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountApplicationStatusCallbackMethod._(json),
}; }

static const AccountApplicationStatusCallbackMethod $get = AccountApplicationStatusCallbackMethod._('GET');

static const AccountApplicationStatusCallbackMethod post = AccountApplicationStatusCallbackMethod._('POST');

static const List<AccountApplicationStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountApplicationStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountApplicationStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountApplicationVoiceFallbackMethod {const AccountApplicationVoiceFallbackMethod._(this.value);

factory AccountApplicationVoiceFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountApplicationVoiceFallbackMethod._(json),
}; }

static const AccountApplicationVoiceFallbackMethod $get = AccountApplicationVoiceFallbackMethod._('GET');

static const AccountApplicationVoiceFallbackMethod post = AccountApplicationVoiceFallbackMethod._('POST');

static const List<AccountApplicationVoiceFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountApplicationVoiceFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountApplicationVoiceFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
@immutable final class AccountApplicationVoiceMethod {const AccountApplicationVoiceMethod._(this.value);

factory AccountApplicationVoiceMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountApplicationVoiceMethod._(json),
}; }

static const AccountApplicationVoiceMethod $get = AccountApplicationVoiceMethod._('GET');

static const AccountApplicationVoiceMethod post = AccountApplicationVoiceMethod._('POST');

static const List<AccountApplicationVoiceMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountApplicationVoiceMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountApplicationVoiceMethod($value)'; } 
 }
@immutable final class AccountApplication {const AccountApplication({this.accountSid, this.apiVersion, this.dateCreated, this.dateUpdated, this.friendlyName, this.messageStatusCallback, this.sid, this.smsFallbackMethod, this.smsFallbackUrl, this.smsMethod, this.smsStatusCallback, this.smsUrl, this.statusCallback, this.statusCallbackMethod, this.uri, this.voiceCallerIdLookup, this.voiceFallbackMethod, this.voiceFallbackUrl, this.voiceMethod, this.voiceUrl, this.publicApplicationConnectEnabled, });

factory AccountApplication.fromJson(Map<String, dynamic> json) { return AccountApplication(
  accountSid: json['account_sid'] as String?,
  apiVersion: json['api_version'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  friendlyName: json['friendly_name'] as String?,
  messageStatusCallback: json['message_status_callback'] != null ? Uri.parse(json['message_status_callback'] as String) : null,
  sid: json['sid'] as String?,
  smsFallbackMethod: json['sms_fallback_method'] != null ? AccountApplicationSmsFallbackMethod.fromJson(json['sms_fallback_method'] as String) : null,
  smsFallbackUrl: json['sms_fallback_url'] != null ? Uri.parse(json['sms_fallback_url'] as String) : null,
  smsMethod: json['sms_method'] != null ? AccountApplicationSmsMethod.fromJson(json['sms_method'] as String) : null,
  smsStatusCallback: json['sms_status_callback'] != null ? Uri.parse(json['sms_status_callback'] as String) : null,
  smsUrl: json['sms_url'] != null ? Uri.parse(json['sms_url'] as String) : null,
  statusCallback: json['status_callback'] != null ? Uri.parse(json['status_callback'] as String) : null,
  statusCallbackMethod: json['status_callback_method'] != null ? AccountApplicationStatusCallbackMethod.fromJson(json['status_callback_method'] as String) : null,
  uri: json['uri'] as String?,
  voiceCallerIdLookup: json['voice_caller_id_lookup'] as bool?,
  voiceFallbackMethod: json['voice_fallback_method'] != null ? AccountApplicationVoiceFallbackMethod.fromJson(json['voice_fallback_method'] as String) : null,
  voiceFallbackUrl: json['voice_fallback_url'] != null ? Uri.parse(json['voice_fallback_url'] as String) : null,
  voiceMethod: json['voice_method'] != null ? AccountApplicationVoiceMethod.fromJson(json['voice_method'] as String) : null,
  voiceUrl: json['voice_url'] != null ? Uri.parse(json['voice_url'] as String) : null,
  publicApplicationConnectEnabled: json['public_application_connect_enabled'] as bool?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Application resource.
final String? accountSid;

/// The API version used to start a new TwiML session.
final String? apiVersion;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The string that you assigned to describe the resource.
final String? friendlyName;

/// The URL we call using a POST method to send message status information to your application.
final Uri? messageStatusCallback;

/// The unique string that that we created to identify the Application resource.
final String? sid;

/// The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
final AccountApplicationSmsFallbackMethod? smsFallbackMethod;

/// The URL that we call when an error occurs while retrieving or executing the TwiML from `sms_url`.
final Uri? smsFallbackUrl;

/// The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
final AccountApplicationSmsMethod? smsMethod;

/// The URL we call using a POST method to send status information to your application about SMS messages that refer to the application.
final Uri? smsStatusCallback;

/// The URL we call when the phone number receives an incoming SMS message.
final Uri? smsUrl;

/// The URL we call using the `status_callback_method` to send status information to your application.
final Uri? statusCallback;

/// The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
final AccountApplicationStatusCallbackMethod? statusCallbackMethod;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

/// Whether we look up the caller's caller-ID name from the CNAM database (additional charges apply). Can be: `true` or `false`.
final bool? voiceCallerIdLookup;

/// The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
final AccountApplicationVoiceFallbackMethod? voiceFallbackMethod;

/// The URL that we call when an error occurs retrieving or executing the TwiML requested by `url`.
final Uri? voiceFallbackUrl;

/// The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
final AccountApplicationVoiceMethod? voiceMethod;

/// The URL we call when the phone number assigned to this application receives a call.
final Uri? voiceUrl;

/// Whether to allow other Twilio accounts to dial this applicaton using Dial verb. Can be: `true` or `false`.
final bool? publicApplicationConnectEnabled;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'api_version': ?apiVersion,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'friendly_name': ?friendlyName,
  if (messageStatusCallback != null) 'message_status_callback': messageStatusCallback?.toString(),
  'sid': ?sid,
  if (smsFallbackMethod != null) 'sms_fallback_method': smsFallbackMethod?.toJson(),
  if (smsFallbackUrl != null) 'sms_fallback_url': smsFallbackUrl?.toString(),
  if (smsMethod != null) 'sms_method': smsMethod?.toJson(),
  if (smsStatusCallback != null) 'sms_status_callback': smsStatusCallback?.toString(),
  if (smsUrl != null) 'sms_url': smsUrl?.toString(),
  if (statusCallback != null) 'status_callback': statusCallback?.toString(),
  if (statusCallbackMethod != null) 'status_callback_method': statusCallbackMethod?.toJson(),
  'uri': ?uri,
  'voice_caller_id_lookup': ?voiceCallerIdLookup,
  if (voiceFallbackMethod != null) 'voice_fallback_method': voiceFallbackMethod?.toJson(),
  if (voiceFallbackUrl != null) 'voice_fallback_url': voiceFallbackUrl?.toString(),
  if (voiceMethod != null) 'voice_method': voiceMethod?.toJson(),
  if (voiceUrl != null) 'voice_url': voiceUrl?.toString(),
  'public_application_connect_enabled': ?publicApplicationConnectEnabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'date_created', 'date_updated', 'friendly_name', 'message_status_callback', 'sid', 'sms_fallback_method', 'sms_fallback_url', 'sms_method', 'sms_status_callback', 'sms_url', 'status_callback', 'status_callback_method', 'uri', 'voice_caller_id_lookup', 'voice_fallback_method', 'voice_fallback_url', 'voice_method', 'voice_url', 'public_application_connect_enabled'}.contains(key)); } 
AccountApplication copyWith({String? Function()? accountSid, String? Function()? apiVersion, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? friendlyName, Uri? Function()? messageStatusCallback, String? Function()? sid, AccountApplicationSmsFallbackMethod? Function()? smsFallbackMethod, Uri? Function()? smsFallbackUrl, AccountApplicationSmsMethod? Function()? smsMethod, Uri? Function()? smsStatusCallback, Uri? Function()? smsUrl, Uri? Function()? statusCallback, AccountApplicationStatusCallbackMethod? Function()? statusCallbackMethod, String? Function()? uri, bool? Function()? voiceCallerIdLookup, AccountApplicationVoiceFallbackMethod? Function()? voiceFallbackMethod, Uri? Function()? voiceFallbackUrl, AccountApplicationVoiceMethod? Function()? voiceMethod, Uri? Function()? voiceUrl, bool? Function()? publicApplicationConnectEnabled, }) { return AccountApplication(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  messageStatusCallback: messageStatusCallback != null ? messageStatusCallback() : this.messageStatusCallback,
  sid: sid != null ? sid() : this.sid,
  smsFallbackMethod: smsFallbackMethod != null ? smsFallbackMethod() : this.smsFallbackMethod,
  smsFallbackUrl: smsFallbackUrl != null ? smsFallbackUrl() : this.smsFallbackUrl,
  smsMethod: smsMethod != null ? smsMethod() : this.smsMethod,
  smsStatusCallback: smsStatusCallback != null ? smsStatusCallback() : this.smsStatusCallback,
  smsUrl: smsUrl != null ? smsUrl() : this.smsUrl,
  statusCallback: statusCallback != null ? statusCallback() : this.statusCallback,
  statusCallbackMethod: statusCallbackMethod != null ? statusCallbackMethod() : this.statusCallbackMethod,
  uri: uri != null ? uri() : this.uri,
  voiceCallerIdLookup: voiceCallerIdLookup != null ? voiceCallerIdLookup() : this.voiceCallerIdLookup,
  voiceFallbackMethod: voiceFallbackMethod != null ? voiceFallbackMethod() : this.voiceFallbackMethod,
  voiceFallbackUrl: voiceFallbackUrl != null ? voiceFallbackUrl() : this.voiceFallbackUrl,
  voiceMethod: voiceMethod != null ? voiceMethod() : this.voiceMethod,
  voiceUrl: voiceUrl != null ? voiceUrl() : this.voiceUrl,
  publicApplicationConnectEnabled: publicApplicationConnectEnabled != null ? publicApplicationConnectEnabled() : this.publicApplicationConnectEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountApplication &&
          accountSid == other.accountSid &&
          apiVersion == other.apiVersion &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          messageStatusCallback == other.messageStatusCallback &&
          sid == other.sid &&
          smsFallbackMethod == other.smsFallbackMethod &&
          smsFallbackUrl == other.smsFallbackUrl &&
          smsMethod == other.smsMethod &&
          smsStatusCallback == other.smsStatusCallback &&
          smsUrl == other.smsUrl &&
          statusCallback == other.statusCallback &&
          statusCallbackMethod == other.statusCallbackMethod &&
          uri == other.uri &&
          voiceCallerIdLookup == other.voiceCallerIdLookup &&
          voiceFallbackMethod == other.voiceFallbackMethod &&
          voiceFallbackUrl == other.voiceFallbackUrl &&
          voiceMethod == other.voiceMethod &&
          voiceUrl == other.voiceUrl &&
          publicApplicationConnectEnabled == other.publicApplicationConnectEnabled; } 
@override int get hashCode { return Object.hashAll([accountSid, apiVersion, dateCreated, dateUpdated, friendlyName, messageStatusCallback, sid, smsFallbackMethod, smsFallbackUrl, smsMethod, smsStatusCallback, smsUrl, statusCallback, statusCallbackMethod, uri, voiceCallerIdLookup, voiceFallbackMethod, voiceFallbackUrl, voiceMethod, voiceUrl, publicApplicationConnectEnabled]); } 
@override String toString() { return 'AccountApplication(accountSid: $accountSid, apiVersion: $apiVersion, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, messageStatusCallback: $messageStatusCallback, sid: $sid, smsFallbackMethod: $smsFallbackMethod, smsFallbackUrl: $smsFallbackUrl, smsMethod: $smsMethod, smsStatusCallback: $smsStatusCallback, smsUrl: $smsUrl, statusCallback: $statusCallback, statusCallbackMethod: $statusCallbackMethod, uri: $uri, voiceCallerIdLookup: $voiceCallerIdLookup, voiceFallbackMethod: $voiceFallbackMethod, voiceFallbackUrl: $voiceFallbackUrl, voiceMethod: $voiceMethod, voiceUrl: $voiceUrl, publicApplicationConnectEnabled: $publicApplicationConnectEnabled)'; } 
 }

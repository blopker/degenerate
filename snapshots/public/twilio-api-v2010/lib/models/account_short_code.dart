// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method we use to call the `sms_fallback_url`. Can be: `GET` or `POST`.
@immutable final class AccountShortCodeSmsFallbackMethod {const AccountShortCodeSmsFallbackMethod._(this.value);

factory AccountShortCodeSmsFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountShortCodeSmsFallbackMethod._(json),
}; }

static const AccountShortCodeSmsFallbackMethod $get = AccountShortCodeSmsFallbackMethod._('GET');

static const AccountShortCodeSmsFallbackMethod post = AccountShortCodeSmsFallbackMethod._('POST');

static const List<AccountShortCodeSmsFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountShortCodeSmsFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountShortCodeSmsFallbackMethod($value)'; } 
 }
/// The HTTP method we use to call the `sms_url`. Can be: `GET` or `POST`.
@immutable final class AccountShortCodeSmsMethod {const AccountShortCodeSmsMethod._(this.value);

factory AccountShortCodeSmsMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountShortCodeSmsMethod._(json),
}; }

static const AccountShortCodeSmsMethod $get = AccountShortCodeSmsMethod._('GET');

static const AccountShortCodeSmsMethod post = AccountShortCodeSmsMethod._('POST');

static const List<AccountShortCodeSmsMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountShortCodeSmsMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountShortCodeSmsMethod($value)'; } 
 }
@immutable final class AccountShortCode {const AccountShortCode({this.accountSid = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.shortCode = const Omittable.absent(), this.sid = const Omittable.absent(), this.smsFallbackMethod = const Omittable.absent(), this.smsFallbackUrl = const Omittable.absent(), this.smsMethod = const Omittable.absent(), this.smsUrl = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountShortCode.fromJson(Map<String, dynamic> json) { return AccountShortCode(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  shortCode: json.containsKey('short_code') ? Omittable(json['short_code'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  smsFallbackMethod: json.containsKey('sms_fallback_method') ? Omittable(json['sms_fallback_method'] != null ? AccountShortCodeSmsFallbackMethod.fromJson(json['sms_fallback_method'] as String) : null) : const Omittable.absent(),
  smsFallbackUrl: json.containsKey('sms_fallback_url') ? Omittable(json['sms_fallback_url'] != null ? Uri.parse(json['sms_fallback_url'] as String) : null) : const Omittable.absent(),
  smsMethod: json.containsKey('sms_method') ? Omittable(json['sms_method'] != null ? AccountShortCodeSmsMethod.fromJson(json['sms_method'] as String) : null) : const Omittable.absent(),
  smsUrl: json.containsKey('sms_url') ? Omittable(json['sms_url'] != null ? Uri.parse(json['sms_url'] as String) : null) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this ShortCode resource.
final Omittable<String?> accountSid;

/// The API version used to start a new TwiML session when an SMS message is sent to this short code.
final Omittable<String?> apiVersion;

/// The date and time in GMT that this resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// A string that you assigned to describe this resource. By default, the `FriendlyName` is the short code.
final Omittable<String?> friendlyName;

/// The short code. e.g., 894546.
final Omittable<String?> shortCode;

/// The unique string that that we created to identify this ShortCode resource.
final Omittable<String?> sid;

/// The HTTP method we use to call the `sms_fallback_url`. Can be: `GET` or `POST`.
final Omittable<AccountShortCodeSmsFallbackMethod?> smsFallbackMethod;

/// The URL that we call if an error occurs while retrieving or executing the TwiML from `sms_url`.
final Omittable<Uri?> smsFallbackUrl;

/// The HTTP method we use to call the `sms_url`. Can be: `GET` or `POST`.
final Omittable<AccountShortCodeSmsMethod?> smsMethod;

/// The URL we call when receiving an incoming SMS message to this short code.
final Omittable<Uri?> smsUrl;

/// The URI of this resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (shortCode.isPresent) 'short_code': shortCode.value,
  if (sid.isPresent) 'sid': sid.value,
  if (smsFallbackMethod.isPresent) 'sms_fallback_method': smsFallbackMethod.value?.toJson(),
  if (smsFallbackUrl.isPresent) 'sms_fallback_url': smsFallbackUrl.value?.toString(),
  if (smsMethod.isPresent) 'sms_method': smsMethod.value?.toJson(),
  if (smsUrl.isPresent) 'sms_url': smsUrl.value?.toString(),
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'date_created', 'date_updated', 'friendly_name', 'short_code', 'sid', 'sms_fallback_method', 'sms_fallback_url', 'sms_method', 'sms_url', 'uri'}.contains(key)); } 
AccountShortCode copyWith({Omittable<String?>? accountSid, Omittable<String?>? apiVersion, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? friendlyName, Omittable<String?>? shortCode, Omittable<String?>? sid, Omittable<AccountShortCodeSmsFallbackMethod?>? smsFallbackMethod, Omittable<Uri?>? smsFallbackUrl, Omittable<AccountShortCodeSmsMethod?>? smsMethod, Omittable<Uri?>? smsUrl, Omittable<String?>? uri, }) { return AccountShortCode(
  accountSid: accountSid ?? this.accountSid,
  apiVersion: apiVersion ?? this.apiVersion,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  friendlyName: friendlyName ?? this.friendlyName,
  shortCode: shortCode ?? this.shortCode,
  sid: sid ?? this.sid,
  smsFallbackMethod: smsFallbackMethod ?? this.smsFallbackMethod,
  smsFallbackUrl: smsFallbackUrl ?? this.smsFallbackUrl,
  smsMethod: smsMethod ?? this.smsMethod,
  smsUrl: smsUrl ?? this.smsUrl,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountShortCode &&
          accountSid == other.accountSid &&
          apiVersion == other.apiVersion &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          shortCode == other.shortCode &&
          sid == other.sid &&
          smsFallbackMethod == other.smsFallbackMethod &&
          smsFallbackUrl == other.smsFallbackUrl &&
          smsMethod == other.smsMethod &&
          smsUrl == other.smsUrl &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, apiVersion, dateCreated, dateUpdated, friendlyName, shortCode, sid, smsFallbackMethod, smsFallbackUrl, smsMethod, smsUrl, uri); } 
@override String toString() { return 'AccountShortCode(accountSid: $accountSid, apiVersion: $apiVersion, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, shortCode: $shortCode, sid: $sid, smsFallbackMethod: $smsFallbackMethod, smsFallbackUrl: $smsFallbackUrl, smsMethod: $smsMethod, smsUrl: $smsUrl, uri: $uri)'; } 
 }

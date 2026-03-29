// GENERATED CODE - DO NOT MODIFY BY HAND

import 'usage_trigger_enum_recurring.dart';import 'usage_trigger_enum_trigger_field.dart';/// The HTTP method we use to call `callback_url`. Can be: `GET` or `POST`.
final class AccountUsageUsageTriggerCallbackMethod {const AccountUsageUsageTriggerCallbackMethod._(this.value);

factory AccountUsageUsageTriggerCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountUsageUsageTriggerCallbackMethod._(json),
}; }

static const AccountUsageUsageTriggerCallbackMethod $get = AccountUsageUsageTriggerCallbackMethod._('GET');

static const AccountUsageUsageTriggerCallbackMethod post = AccountUsageUsageTriggerCallbackMethod._('POST');

static const List<AccountUsageUsageTriggerCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountUsageUsageTriggerCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountUsageUsageTriggerCallbackMethod($value)'; } 
 }
final class AccountUsageUsageTrigger {const AccountUsageUsageTrigger({this.accountSid, this.apiVersion, this.callbackMethod, this.callbackUrl, this.currentValue, this.dateCreated, this.dateFired, this.dateUpdated, this.friendlyName, this.recurring, this.sid, this.triggerBy, this.triggerValue, this.uri, this.usageCategory, this.usageRecordUri, });

factory AccountUsageUsageTrigger.fromJson(Map<String, dynamic> json) { return AccountUsageUsageTrigger(
  accountSid: json['account_sid'] as String?,
  apiVersion: json['api_version'] as String?,
  callbackMethod: json['callback_method'] != null ? AccountUsageUsageTriggerCallbackMethod.fromJson(json['callback_method'] as String) : null,
  callbackUrl: json['callback_url'] != null ? Uri.parse(json['callback_url'] as String) : null,
  currentValue: json['current_value'] as String?,
  dateCreated: json['date_created'] as String?,
  dateFired: json['date_fired'] as String?,
  dateUpdated: json['date_updated'] as String?,
  friendlyName: json['friendly_name'] as String?,
  recurring: json['recurring'] != null ? UsageTriggerEnumRecurring.fromJson(json['recurring'] as String) : null,
  sid: json['sid'] as String?,
  triggerBy: json['trigger_by'] != null ? UsageTriggerEnumTriggerField.fromJson(json['trigger_by'] as String) : null,
  triggerValue: json['trigger_value'] as String?,
  uri: json['uri'] as String?,
  usageCategory: json['usage_category'] as String?,
  usageRecordUri: json['usage_record_uri'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that the trigger monitors.
final String? accountSid;

/// The API version used to create the resource.
final String? apiVersion;

/// The HTTP method we use to call `callback_url`. Can be: `GET` or `POST`.
final AccountUsageUsageTriggerCallbackMethod? callbackMethod;

/// The URL we call using the `callback_method` when the trigger fires.
final Uri? callbackUrl;

/// The current value of the field the trigger is watching.
final String? currentValue;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the trigger was last fired specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateFired;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The string that you assigned to describe the trigger.
final String? friendlyName;

final UsageTriggerEnumRecurring? recurring;

/// The unique string that that we created to identify the UsageTrigger resource.
final String? sid;

final UsageTriggerEnumTriggerField? triggerBy;

/// The value at which the trigger will fire.  Must be a positive, numeric value.
final String? triggerValue;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

/// The usage category the trigger watches. Must be one of the supported [usage categories](https://www.twilio.com/docs/usage/api/usage-record#usage-categories).
final String? usageCategory;

/// The URI of the [UsageRecord](https://www.twilio.com/docs/usage/api/usage-record) resource this trigger watches, relative to `https://api.twilio.com`.
final String? usageRecordUri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'api_version': ?apiVersion,
  if (callbackMethod != null) 'callback_method': callbackMethod?.toJson(),
  if (callbackUrl != null) 'callback_url': callbackUrl?.toString(),
  'current_value': ?currentValue,
  'date_created': ?dateCreated,
  'date_fired': ?dateFired,
  'date_updated': ?dateUpdated,
  'friendly_name': ?friendlyName,
  if (recurring != null) 'recurring': recurring?.toJson(),
  'sid': ?sid,
  if (triggerBy != null) 'trigger_by': triggerBy?.toJson(),
  'trigger_value': ?triggerValue,
  'uri': ?uri,
  'usage_category': ?usageCategory,
  'usage_record_uri': ?usageRecordUri,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountUsageUsageTrigger copyWith({String? Function()? accountSid, String? Function()? apiVersion, AccountUsageUsageTriggerCallbackMethod? Function()? callbackMethod, Uri? Function()? callbackUrl, String? Function()? currentValue, String? Function()? dateCreated, String? Function()? dateFired, String? Function()? dateUpdated, String? Function()? friendlyName, UsageTriggerEnumRecurring Function()? recurring, String? Function()? sid, UsageTriggerEnumTriggerField Function()? triggerBy, String? Function()? triggerValue, String? Function()? uri, String? Function()? usageCategory, String? Function()? usageRecordUri, }) { return AccountUsageUsageTrigger(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  callbackMethod: callbackMethod != null ? callbackMethod() : this.callbackMethod,
  callbackUrl: callbackUrl != null ? callbackUrl() : this.callbackUrl,
  currentValue: currentValue != null ? currentValue() : this.currentValue,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateFired: dateFired != null ? dateFired() : this.dateFired,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  recurring: recurring != null ? recurring() : this.recurring,
  sid: sid != null ? sid() : this.sid,
  triggerBy: triggerBy != null ? triggerBy() : this.triggerBy,
  triggerValue: triggerValue != null ? triggerValue() : this.triggerValue,
  uri: uri != null ? uri() : this.uri,
  usageCategory: usageCategory != null ? usageCategory() : this.usageCategory,
  usageRecordUri: usageRecordUri != null ? usageRecordUri() : this.usageRecordUri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUsageUsageTrigger &&
          accountSid == other.accountSid &&
          apiVersion == other.apiVersion &&
          callbackMethod == other.callbackMethod &&
          callbackUrl == other.callbackUrl &&
          currentValue == other.currentValue &&
          dateCreated == other.dateCreated &&
          dateFired == other.dateFired &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          recurring == other.recurring &&
          sid == other.sid &&
          triggerBy == other.triggerBy &&
          triggerValue == other.triggerValue &&
          uri == other.uri &&
          usageCategory == other.usageCategory &&
          usageRecordUri == other.usageRecordUri; } 
@override int get hashCode { return Object.hash(accountSid, apiVersion, callbackMethod, callbackUrl, currentValue, dateCreated, dateFired, dateUpdated, friendlyName, recurring, sid, triggerBy, triggerValue, uri, usageCategory, usageRecordUri); } 
@override String toString() { return 'AccountUsageUsageTrigger(accountSid: $accountSid, apiVersion: $apiVersion, callbackMethod: $callbackMethod, callbackUrl: $callbackUrl, currentValue: $currentValue, dateCreated: $dateCreated, dateFired: $dateFired, dateUpdated: $dateUpdated, friendlyName: $friendlyName, recurring: $recurring, sid: $sid, triggerBy: $triggerBy, triggerValue: $triggerValue, uri: $uri, usageCategory: $usageCategory, usageRecordUri: $usageRecordUri)'; } 
 }

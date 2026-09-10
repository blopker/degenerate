// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'usage_trigger_enum_recurring.dart';import 'usage_trigger_enum_trigger_field.dart';/// The HTTP method we use to call `callback_url`. Can be: `GET` or `POST`.
@immutable final class AccountUsageUsageTriggerCallbackMethod {const AccountUsageUsageTriggerCallbackMethod._(this.value);

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
@immutable final class AccountUsageUsageTrigger {const AccountUsageUsageTrigger({this.accountSid = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.callbackMethod = const Omittable.absent(), this.callbackUrl = const Omittable.absent(), this.currentValue = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateFired = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.recurring, this.sid = const Omittable.absent(), this.triggerBy, this.triggerValue = const Omittable.absent(), this.uri = const Omittable.absent(), this.usageCategory = const Omittable.absent(), this.usageRecordUri = const Omittable.absent(), });

factory AccountUsageUsageTrigger.fromJson(Map<String, dynamic> json) { return AccountUsageUsageTrigger(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  callbackMethod: json.containsKey('callback_method') ? Omittable(json['callback_method'] != null ? AccountUsageUsageTriggerCallbackMethod.fromJson(json['callback_method'] as String) : null) : const Omittable.absent(),
  callbackUrl: json.containsKey('callback_url') ? Omittable(json['callback_url'] != null ? Uri.parse(json['callback_url'] as String) : null) : const Omittable.absent(),
  currentValue: json.containsKey('current_value') ? Omittable(json['current_value'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateFired: json.containsKey('date_fired') ? Omittable(json['date_fired'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  recurring: json['recurring'] != null ? UsageTriggerEnumRecurring.fromJson(json['recurring'] as String) : null,
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  triggerBy: json['trigger_by'] != null ? UsageTriggerEnumTriggerField.fromJson(json['trigger_by'] as String) : null,
  triggerValue: json.containsKey('trigger_value') ? Omittable(json['trigger_value'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  usageCategory: json.containsKey('usage_category') ? Omittable(json['usage_category'] as String?) : const Omittable.absent(),
  usageRecordUri: json.containsKey('usage_record_uri') ? Omittable(json['usage_record_uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that the trigger monitors.
final Omittable<String?> accountSid;

/// The API version used to create the resource.
final Omittable<String?> apiVersion;

/// The HTTP method we use to call `callback_url`. Can be: `GET` or `POST`.
final Omittable<AccountUsageUsageTriggerCallbackMethod?> callbackMethod;

/// The URL we call using the `callback_method` when the trigger fires.
final Omittable<Uri?> callbackUrl;

/// The current value of the field the trigger is watching.
final Omittable<String?> currentValue;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the trigger was last fired specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateFired;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The string that you assigned to describe the trigger.
final Omittable<String?> friendlyName;

final UsageTriggerEnumRecurring? recurring;

/// The unique string that that we created to identify the UsageTrigger resource.
final Omittable<String?> sid;

final UsageTriggerEnumTriggerField? triggerBy;

/// The value at which the trigger will fire.  Must be a positive, numeric value.
final Omittable<String?> triggerValue;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// The usage category the trigger watches. Must be one of the supported [usage categories](https://www.twilio.com/docs/usage/api/usage-record#usage-categories).
final Omittable<String?> usageCategory;

/// The URI of the [UsageRecord](https://www.twilio.com/docs/usage/api/usage-record) resource this trigger watches, relative to `https://api.twilio.com`.
final Omittable<String?> usageRecordUri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (callbackMethod.isPresent) 'callback_method': callbackMethod.value?.toJson(),
  if (callbackUrl.isPresent) 'callback_url': callbackUrl.value?.toString(),
  if (currentValue.isPresent) 'current_value': currentValue.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateFired.isPresent) 'date_fired': dateFired.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (recurring != null) 'recurring': recurring?.toJson(),
  if (sid.isPresent) 'sid': sid.value,
  if (triggerBy != null) 'trigger_by': triggerBy?.toJson(),
  if (triggerValue.isPresent) 'trigger_value': triggerValue.value,
  if (uri.isPresent) 'uri': uri.value,
  if (usageCategory.isPresent) 'usage_category': usageCategory.value,
  if (usageRecordUri.isPresent) 'usage_record_uri': usageRecordUri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'callback_method', 'callback_url', 'current_value', 'date_created', 'date_fired', 'date_updated', 'friendly_name', 'recurring', 'sid', 'trigger_by', 'trigger_value', 'uri', 'usage_category', 'usage_record_uri'}.contains(key)); } 
AccountUsageUsageTrigger copyWith({Omittable<String?>? accountSid, Omittable<String?>? apiVersion, Omittable<AccountUsageUsageTriggerCallbackMethod?>? callbackMethod, Omittable<Uri?>? callbackUrl, Omittable<String?>? currentValue, Omittable<String?>? dateCreated, Omittable<String?>? dateFired, Omittable<String?>? dateUpdated, Omittable<String?>? friendlyName, UsageTriggerEnumRecurring? Function()? recurring, Omittable<String?>? sid, UsageTriggerEnumTriggerField? Function()? triggerBy, Omittable<String?>? triggerValue, Omittable<String?>? uri, Omittable<String?>? usageCategory, Omittable<String?>? usageRecordUri, }) { return AccountUsageUsageTrigger(
  accountSid: accountSid ?? this.accountSid,
  apiVersion: apiVersion ?? this.apiVersion,
  callbackMethod: callbackMethod ?? this.callbackMethod,
  callbackUrl: callbackUrl ?? this.callbackUrl,
  currentValue: currentValue ?? this.currentValue,
  dateCreated: dateCreated ?? this.dateCreated,
  dateFired: dateFired ?? this.dateFired,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  friendlyName: friendlyName ?? this.friendlyName,
  recurring: recurring != null ? recurring() : this.recurring,
  sid: sid ?? this.sid,
  triggerBy: triggerBy != null ? triggerBy() : this.triggerBy,
  triggerValue: triggerValue ?? this.triggerValue,
  uri: uri ?? this.uri,
  usageCategory: usageCategory ?? this.usageCategory,
  usageRecordUri: usageRecordUri ?? this.usageRecordUri,
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

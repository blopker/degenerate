// GENERATED CODE - DO NOT MODIFY BY HAND

import 'usage_trigger_enum_recurring.dart';import 'usage_trigger_enum_trigger_field.dart';/// The HTTP method we should use to call `callback_url`. Can be: `GET` or `POST` and the default is `POST`.
final class CreateUsageTriggerRequestCallbackMethod {const CreateUsageTriggerRequestCallbackMethod._(this.value);

factory CreateUsageTriggerRequestCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateUsageTriggerRequestCallbackMethod._(json),
}; }

static const CreateUsageTriggerRequestCallbackMethod $get = CreateUsageTriggerRequestCallbackMethod._('GET');

static const CreateUsageTriggerRequestCallbackMethod post = CreateUsageTriggerRequestCallbackMethod._('POST');

static const List<CreateUsageTriggerRequestCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateUsageTriggerRequestCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateUsageTriggerRequestCallbackMethod($value)'; } 
 }
final class CreateUsageTriggerRequest {const CreateUsageTriggerRequest({required this.callbackUrl, required this.triggerValue, required this.usageCategory, this.callbackMethod, this.friendlyName, this.recurring, this.triggerBy, });

factory CreateUsageTriggerRequest.fromJson(Map<String, dynamic> json) { return CreateUsageTriggerRequest(
  callbackUrl: Uri.parse(json['CallbackUrl'] as String),
  triggerValue: json['TriggerValue'] as String,
  usageCategory: json['UsageCategory'] as String,
  callbackMethod: json['CallbackMethod'] != null ? CreateUsageTriggerRequestCallbackMethod.fromJson(json['CallbackMethod'] as String) : null,
  friendlyName: json['FriendlyName'] as String?,
  recurring: json['Recurring'] != null ? UsageTriggerEnumRecurring.fromJson(json['Recurring'] as String) : null,
  triggerBy: json['TriggerBy'] != null ? UsageTriggerEnumTriggerField.fromJson(json['TriggerBy'] as String) : null,
); }

/// The URL we should call using `callback_method` when the trigger fires.
final Uri callbackUrl;

/// The usage value at which the trigger should fire.  For convenience, you can use an offset value such as `+30` to specify a trigger_value that is 30 units more than the current usage value. Be sure to urlencode a `+` as `%2B`.
final String triggerValue;

/// The usage category that the trigger should watch.  Use one of the supported [usage categories](https://www.twilio.com/docs/usage/api/usage-record#usage-categories) for this value.
final String usageCategory;

/// The HTTP method we should use to call `callback_url`. Can be: `GET` or `POST` and the default is `POST`.
final CreateUsageTriggerRequestCallbackMethod? callbackMethod;

/// A descriptive string that you create to describe the resource. It can be up to 64 characters long.
final String? friendlyName;

/// The frequency of a recurring UsageTrigger.  Can be: `daily`, `monthly`, or `yearly` for recurring triggers or empty for non-recurring triggers. A trigger will only fire once during each period. Recurring times are in GMT.
final UsageTriggerEnumRecurring? recurring;

/// The field in the [UsageRecord](https://www.twilio.com/docs/usage/api/usage-record) resource that fires the trigger.  Can be: `count`, `usage`, or `price`, as described in the [UsageRecords documentation](https://www.twilio.com/docs/usage/api/usage-record#usage-count-price).
final UsageTriggerEnumTriggerField? triggerBy;

Map<String, dynamic> toJson() { return {
  'CallbackUrl': callbackUrl.toString(),
  'TriggerValue': triggerValue,
  'UsageCategory': usageCategory,
  if (callbackMethod != null) 'CallbackMethod': callbackMethod?.toJson(),
  'FriendlyName': ?friendlyName,
  if (recurring != null) 'Recurring': recurring?.toJson(),
  if (triggerBy != null) 'TriggerBy': triggerBy?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('CallbackUrl') && json['CallbackUrl'] is String &&
      json.containsKey('TriggerValue') && json['TriggerValue'] is String &&
      json.containsKey('UsageCategory') && json['UsageCategory'] is String; } 
CreateUsageTriggerRequest copyWith({Uri? callbackUrl, String? triggerValue, String? usageCategory, CreateUsageTriggerRequestCallbackMethod Function()? callbackMethod, String Function()? friendlyName, UsageTriggerEnumRecurring Function()? recurring, UsageTriggerEnumTriggerField Function()? triggerBy, }) { return CreateUsageTriggerRequest(
  callbackUrl: callbackUrl ?? this.callbackUrl,
  triggerValue: triggerValue ?? this.triggerValue,
  usageCategory: usageCategory ?? this.usageCategory,
  callbackMethod: callbackMethod != null ? callbackMethod() : this.callbackMethod,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  recurring: recurring != null ? recurring() : this.recurring,
  triggerBy: triggerBy != null ? triggerBy() : this.triggerBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateUsageTriggerRequest &&
          callbackUrl == other.callbackUrl &&
          triggerValue == other.triggerValue &&
          usageCategory == other.usageCategory &&
          callbackMethod == other.callbackMethod &&
          friendlyName == other.friendlyName &&
          recurring == other.recurring &&
          triggerBy == other.triggerBy; } 
@override int get hashCode { return Object.hash(callbackUrl, triggerValue, usageCategory, callbackMethod, friendlyName, recurring, triggerBy); } 
@override String toString() { return 'CreateUsageTriggerRequest(callbackUrl: $callbackUrl, triggerValue: $triggerValue, usageCategory: $usageCategory, callbackMethod: $callbackMethod, friendlyName: $friendlyName, recurring: $recurring, triggerBy: $triggerBy)'; } 
 }

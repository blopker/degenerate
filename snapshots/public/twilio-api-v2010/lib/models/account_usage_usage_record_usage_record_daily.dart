// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountUsageUsageRecordUsageRecordDaily {const AccountUsageUsageRecordUsageRecordDaily({this.accountSid = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.asOf = const Omittable.absent(), this.category = const Omittable.absent(), this.count = const Omittable.absent(), this.countUnit = const Omittable.absent(), this.description = const Omittable.absent(), this.endDate = const Omittable.absent(), this.price = const Omittable.absent(), this.priceUnit = const Omittable.absent(), this.startDate = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), this.uri = const Omittable.absent(), this.usage = const Omittable.absent(), this.usageUnit = const Omittable.absent(), });

factory AccountUsageUsageRecordUsageRecordDaily.fromJson(Map<String, dynamic> json) { return AccountUsageUsageRecordUsageRecordDaily(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  asOf: json.containsKey('as_of') ? Omittable(json['as_of'] as String?) : const Omittable.absent(),
  category: json.containsKey('category') ? Omittable(json['category'] as String?) : const Omittable.absent(),
  count: json.containsKey('count') ? Omittable(json['count'] as String?) : const Omittable.absent(),
  countUnit: json.containsKey('count_unit') ? Omittable(json['count_unit'] as String?) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  endDate: json.containsKey('end_date') ? Omittable(json['end_date'] as String?) : const Omittable.absent(),
  price: json.containsKey('price') ? Omittable(json['price'] != null ? (json['price'] as num).toDouble() : null) : const Omittable.absent(),
  priceUnit: json.containsKey('price_unit') ? Omittable(json['price_unit'] as String?) : const Omittable.absent(),
  startDate: json.containsKey('start_date') ? Omittable(json['start_date'] as String?) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  usage: json.containsKey('usage') ? Omittable(json['usage'] as String?) : const Omittable.absent(),
  usageUnit: json.containsKey('usage_unit') ? Omittable(json['usage_unit'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that accrued the usage.
final Omittable<String?> accountSid;

/// The API version used to create the resource.
final Omittable<String?> apiVersion;

/// Usage records up to date as of this timestamp, formatted as YYYY-MM-DDTHH:MM:SS+00:00. All timestamps are in GMT
final Omittable<String?> asOf;

/// The category of usage. For more information, see [Usage Categories](https://www.twilio.com/docs/usage/api/usage-record#usage-categories).
final Omittable<String?> category;

/// The number of usage events, such as the number of calls.
final Omittable<String?> count;

/// The units in which `count` is measured, such as `calls` for calls or `messages` for SMS.
final Omittable<String?> countUnit;

/// A plain-language description of the usage category.
final Omittable<String?> description;

/// The last date for which usage is included in the UsageRecord. The date is specified in GMT and formatted as `YYYY-MM-DD`.
final Omittable<String?> endDate;

/// The total price of the usage in the currency specified in `price_unit` and associated with the account.
final Omittable<double?> price;

/// The currency in which `price` is measured, in [ISO 4127](https://www.iso.org/iso/home/standards/currency_codes.htm) format, such as `usd`, `eur`, and `jpy`.
final Omittable<String?> priceUnit;

/// The first date for which usage is included in this UsageRecord. The date is specified in GMT and formatted as `YYYY-MM-DD`.
final Omittable<String?> startDate;

/// A list of related resources identified by their URIs. For more information, see [List Subresources](https://www.twilio.com/docs/usage/api/usage-record#list-subresources).
final Omittable<Map<String,dynamic>?> subresourceUris;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// The amount used to bill usage and measured in units described in `usage_unit`.
final Omittable<String?> usage;

/// The units in which `usage` is measured, such as `minutes` for calls or `messages` for SMS.
final Omittable<String?> usageUnit;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (asOf.isPresent) 'as_of': asOf.value,
  if (category.isPresent) 'category': category.value,
  if (count.isPresent) 'count': count.value,
  if (countUnit.isPresent) 'count_unit': countUnit.value,
  if (description.isPresent) 'description': description.value,
  if (endDate.isPresent) 'end_date': endDate.value,
  if (price.isPresent) 'price': price.value,
  if (priceUnit.isPresent) 'price_unit': priceUnit.value,
  if (startDate.isPresent) 'start_date': startDate.value,
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
  if (uri.isPresent) 'uri': uri.value,
  if (usage.isPresent) 'usage': usage.value,
  if (usageUnit.isPresent) 'usage_unit': usageUnit.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'as_of', 'category', 'count', 'count_unit', 'description', 'end_date', 'price', 'price_unit', 'start_date', 'subresource_uris', 'uri', 'usage', 'usage_unit'}.contains(key)); } 
AccountUsageUsageRecordUsageRecordDaily copyWith({Omittable<String?>? accountSid, Omittable<String?>? apiVersion, Omittable<String?>? asOf, Omittable<String?>? category, Omittable<String?>? count, Omittable<String?>? countUnit, Omittable<String?>? description, Omittable<String?>? endDate, Omittable<double?>? price, Omittable<String?>? priceUnit, Omittable<String?>? startDate, Omittable<Map<String,dynamic>?>? subresourceUris, Omittable<String?>? uri, Omittable<String?>? usage, Omittable<String?>? usageUnit, }) { return AccountUsageUsageRecordUsageRecordDaily(
  accountSid: accountSid ?? this.accountSid,
  apiVersion: apiVersion ?? this.apiVersion,
  asOf: asOf ?? this.asOf,
  category: category ?? this.category,
  count: count ?? this.count,
  countUnit: countUnit ?? this.countUnit,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  price: price ?? this.price,
  priceUnit: priceUnit ?? this.priceUnit,
  startDate: startDate ?? this.startDate,
  subresourceUris: subresourceUris ?? this.subresourceUris,
  uri: uri ?? this.uri,
  usage: usage ?? this.usage,
  usageUnit: usageUnit ?? this.usageUnit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUsageUsageRecordUsageRecordDaily &&
          accountSid == other.accountSid &&
          apiVersion == other.apiVersion &&
          asOf == other.asOf &&
          category == other.category &&
          count == other.count &&
          countUnit == other.countUnit &&
          description == other.description &&
          endDate == other.endDate &&
          price == other.price &&
          priceUnit == other.priceUnit &&
          startDate == other.startDate &&
          subresourceUris == other.subresourceUris &&
          uri == other.uri &&
          usage == other.usage &&
          usageUnit == other.usageUnit; } 
@override int get hashCode { return Object.hash(accountSid, apiVersion, asOf, category, count, countUnit, description, endDate, price, priceUnit, startDate, subresourceUris, uri, usage, usageUnit); } 
@override String toString() { return 'AccountUsageUsageRecordUsageRecordDaily(accountSid: $accountSid, apiVersion: $apiVersion, asOf: $asOf, category: $category, count: $count, countUnit: $countUnit, description: $description, endDate: $endDate, price: $price, priceUnit: $priceUnit, startDate: $startDate, subresourceUris: $subresourceUris, uri: $uri, usage: $usage, usageUnit: $usageUnit)'; } 
 }

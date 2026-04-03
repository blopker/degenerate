// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes {const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes.fromJson(String json) { return switch (json) {
  'india' => india,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes india = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes._('india');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes> values = [india];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType {const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'maximum' => maximum,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType fixed = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType._('fixed');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType maximum = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType._('maximum');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType> values = [fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval {const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'sporadic' => sporadic,
  'week' => week,
  'year' => year,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval day = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval._('day');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval month = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval._('month');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval sporadic = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval._('sporadic');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval week = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval._('week');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval year = PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval._('year');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval> values = [day, month, sporadic, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions {const PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions({required this.amount, required this.amountType, required this.currency, required this.interval, required this.reference, required this.startDate, this.description, this.endDate, this.intervalCount, this.supportedTypes, });

factory PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions(
  amount: (json['amount'] as num).toInt(),
  amountType: PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType.fromJson(json['amount_type'] as String),
  currency: json['currency'] as String,
  description: json['description'] as String?,
  endDate: json['end_date'] != null ? (json['end_date'] as num).toInt() : null,
  interval: PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
  reference: json['reference'] as String,
  startDate: (json['start_date'] as num).toInt(),
  supportedTypes: (json['supported_types'] as List<dynamic>?)?.map((e) => PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes.fromJson(e as String)).toList(),
); }

final int amount;

final PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType amountType;

final String currency;

final String? description;

final int? endDate;

final PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval interval;

final int? intervalCount;

final String reference;

final int startDate;

final List<PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes>? supportedTypes;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'amount_type': amountType.toJson(),
  'currency': currency,
  'description': ?description,
  'end_date': ?endDate,
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
  'reference': reference,
  'start_date': startDate,
  if (supportedTypes != null) 'supported_types': supportedTypes?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('amount_type') &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('interval') &&
      json.containsKey('reference') && json['reference'] is String &&
      json.containsKey('start_date') && json['start_date'] is num; } 
PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions copyWith({int? amount, PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsAmountType? amountType, String? currency, String Function()? description, int Function()? endDate, PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsInterval? interval, int Function()? intervalCount, String? reference, int? startDate, List<PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptionsSupportedTypes> Function()? supportedTypes, }) { return PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions(
  amount: amount ?? this.amount,
  amountType: amountType ?? this.amountType,
  currency: currency ?? this.currency,
  description: description != null ? description() : this.description,
  endDate: endDate != null ? endDate() : this.endDate,
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
  reference: reference ?? this.reference,
  startDate: startDate ?? this.startDate,
  supportedTypes: supportedTypes != null ? supportedTypes() : this.supportedTypes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions &&
          amount == other.amount &&
          amountType == other.amountType &&
          currency == other.currency &&
          description == other.description &&
          endDate == other.endDate &&
          interval == other.interval &&
          intervalCount == other.intervalCount &&
          reference == other.reference &&
          startDate == other.startDate &&
          listEquals(supportedTypes, other.supportedTypes); } 
@override int get hashCode { return Object.hash(amount, amountType, currency, description, endDate, interval, intervalCount, reference, startDate, Object.hashAll(supportedTypes ?? const [])); } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsCardMandateOptions(amount: $amount, amountType: $amountType, currency: $currency, description: $description, endDate: $endDate, interval: $interval, intervalCount: $intervalCount, reference: $reference, startDate: $startDate, supportedTypes: $supportedTypes)'; } 
 }

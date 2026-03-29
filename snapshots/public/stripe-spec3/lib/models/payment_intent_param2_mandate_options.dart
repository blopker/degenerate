// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentParam2MandateOptionsSupportedTypes {const PaymentIntentParam2MandateOptionsSupportedTypes._(this.value);

factory PaymentIntentParam2MandateOptionsSupportedTypes.fromJson(String json) { return switch (json) {
  'india' => india,
  _ => PaymentIntentParam2MandateOptionsSupportedTypes._(json),
}; }

static const PaymentIntentParam2MandateOptionsSupportedTypes india = PaymentIntentParam2MandateOptionsSupportedTypes._('india');

static const List<PaymentIntentParam2MandateOptionsSupportedTypes> values = [india];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2MandateOptionsSupportedTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2MandateOptionsSupportedTypes($value)'; } 
 }
final class PaymentIntentParam2MandateOptionsAmountType {const PaymentIntentParam2MandateOptionsAmountType._(this.value);

factory PaymentIntentParam2MandateOptionsAmountType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'maximum' => maximum,
  _ => PaymentIntentParam2MandateOptionsAmountType._(json),
}; }

static const PaymentIntentParam2MandateOptionsAmountType fixed = PaymentIntentParam2MandateOptionsAmountType._('fixed');

static const PaymentIntentParam2MandateOptionsAmountType maximum = PaymentIntentParam2MandateOptionsAmountType._('maximum');

static const List<PaymentIntentParam2MandateOptionsAmountType> values = [fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2MandateOptionsAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2MandateOptionsAmountType($value)'; } 
 }
final class PaymentIntentParam2MandateOptionsInterval {const PaymentIntentParam2MandateOptionsInterval._(this.value);

factory PaymentIntentParam2MandateOptionsInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'sporadic' => sporadic,
  'week' => week,
  'year' => year,
  _ => PaymentIntentParam2MandateOptionsInterval._(json),
}; }

static const PaymentIntentParam2MandateOptionsInterval day = PaymentIntentParam2MandateOptionsInterval._('day');

static const PaymentIntentParam2MandateOptionsInterval month = PaymentIntentParam2MandateOptionsInterval._('month');

static const PaymentIntentParam2MandateOptionsInterval sporadic = PaymentIntentParam2MandateOptionsInterval._('sporadic');

static const PaymentIntentParam2MandateOptionsInterval week = PaymentIntentParam2MandateOptionsInterval._('week');

static const PaymentIntentParam2MandateOptionsInterval year = PaymentIntentParam2MandateOptionsInterval._('year');

static const List<PaymentIntentParam2MandateOptionsInterval> values = [day, month, sporadic, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2MandateOptionsInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2MandateOptionsInterval($value)'; } 
 }
final class PaymentIntentParam2MandateOptions {const PaymentIntentParam2MandateOptions({required this.amount, required this.amountType, this.description, this.endDate, required this.interval, this.intervalCount, required this.reference, required this.startDate, this.supportedTypes, });

factory PaymentIntentParam2MandateOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentParam2MandateOptions(
  amount: (json['amount'] as num).toInt(),
  amountType: PaymentIntentParam2MandateOptionsAmountType.fromJson(json['amount_type'] as String),
  description: json['description'] as String?,
  endDate: json['end_date'] != null ? (json['end_date'] as num).toInt() : null,
  interval: PaymentIntentParam2MandateOptionsInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
  reference: json['reference'] as String,
  startDate: (json['start_date'] as num).toInt(),
  supportedTypes: (json['supported_types'] as List<dynamic>?)?.map((e) => PaymentIntentParam2MandateOptionsSupportedTypes.fromJson(e as String)).toList(),
); }

final int amount;

final PaymentIntentParam2MandateOptionsAmountType amountType;

final String? description;

final int? endDate;

final PaymentIntentParam2MandateOptionsInterval interval;

final int? intervalCount;

final String reference;

final int startDate;

final List<PaymentIntentParam2MandateOptionsSupportedTypes>? supportedTypes;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'amount_type': amountType.toJson(),
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
      json.containsKey('interval') &&
      json.containsKey('reference') && json['reference'] is String &&
      json.containsKey('start_date') && json['start_date'] is num; } 
PaymentIntentParam2MandateOptions copyWith({int? amount, PaymentIntentParam2MandateOptionsAmountType? amountType, String Function()? description, int Function()? endDate, PaymentIntentParam2MandateOptionsInterval? interval, int Function()? intervalCount, String? reference, int? startDate, List<PaymentIntentParam2MandateOptionsSupportedTypes> Function()? supportedTypes, }) { return PaymentIntentParam2MandateOptions(
  amount: amount ?? this.amount,
  amountType: amountType ?? this.amountType,
  description: description != null ? description() : this.description,
  endDate: endDate != null ? endDate() : this.endDate,
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
  reference: reference ?? this.reference,
  startDate: startDate ?? this.startDate,
  supportedTypes: supportedTypes != null ? supportedTypes() : this.supportedTypes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParam2MandateOptions &&
          amount == other.amount &&
          amountType == other.amountType &&
          description == other.description &&
          endDate == other.endDate &&
          interval == other.interval &&
          intervalCount == other.intervalCount &&
          reference == other.reference &&
          startDate == other.startDate &&
          listEquals(supportedTypes, other.supportedTypes); } 
@override int get hashCode { return Object.hash(amount, amountType, description, endDate, interval, intervalCount, reference, startDate, Object.hashAll(supportedTypes ?? const [])); } 
@override String toString() { return 'PaymentIntentParam2MandateOptions(amount: $amount, amountType: $amountType, description: $description, endDate: $endDate, interval: $interval, intervalCount: $intervalCount, reference: $reference, startDate: $startDate, supportedTypes: $supportedTypes)'; } 
 }

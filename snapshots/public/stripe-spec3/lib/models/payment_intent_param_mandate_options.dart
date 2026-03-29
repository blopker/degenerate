// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentParamMandateOptionsSupportedTypes {const PaymentIntentParamMandateOptionsSupportedTypes._(this.value);

factory PaymentIntentParamMandateOptionsSupportedTypes.fromJson(String json) { return switch (json) {
  'india' => india,
  _ => PaymentIntentParamMandateOptionsSupportedTypes._(json),
}; }

static const PaymentIntentParamMandateOptionsSupportedTypes india = PaymentIntentParamMandateOptionsSupportedTypes._('india');

static const List<PaymentIntentParamMandateOptionsSupportedTypes> values = [india];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamMandateOptionsSupportedTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamMandateOptionsSupportedTypes($value)'; } 
 }
final class PaymentIntentParamMandateOptionsAmountType {const PaymentIntentParamMandateOptionsAmountType._(this.value);

factory PaymentIntentParamMandateOptionsAmountType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'maximum' => maximum,
  _ => PaymentIntentParamMandateOptionsAmountType._(json),
}; }

static const PaymentIntentParamMandateOptionsAmountType fixed = PaymentIntentParamMandateOptionsAmountType._('fixed');

static const PaymentIntentParamMandateOptionsAmountType maximum = PaymentIntentParamMandateOptionsAmountType._('maximum');

static const List<PaymentIntentParamMandateOptionsAmountType> values = [fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamMandateOptionsAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamMandateOptionsAmountType($value)'; } 
 }
final class PaymentIntentParamMandateOptionsInterval {const PaymentIntentParamMandateOptionsInterval._(this.value);

factory PaymentIntentParamMandateOptionsInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'sporadic' => sporadic,
  'week' => week,
  'year' => year,
  _ => PaymentIntentParamMandateOptionsInterval._(json),
}; }

static const PaymentIntentParamMandateOptionsInterval day = PaymentIntentParamMandateOptionsInterval._('day');

static const PaymentIntentParamMandateOptionsInterval month = PaymentIntentParamMandateOptionsInterval._('month');

static const PaymentIntentParamMandateOptionsInterval sporadic = PaymentIntentParamMandateOptionsInterval._('sporadic');

static const PaymentIntentParamMandateOptionsInterval week = PaymentIntentParamMandateOptionsInterval._('week');

static const PaymentIntentParamMandateOptionsInterval year = PaymentIntentParamMandateOptionsInterval._('year');

static const List<PaymentIntentParamMandateOptionsInterval> values = [day, month, sporadic, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamMandateOptionsInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamMandateOptionsInterval($value)'; } 
 }
final class PaymentIntentParamMandateOptions {const PaymentIntentParamMandateOptions({required this.amount, required this.amountType, this.description, this.endDate, required this.interval, this.intervalCount, required this.reference, required this.startDate, this.supportedTypes, });

factory PaymentIntentParamMandateOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentParamMandateOptions(
  amount: (json['amount'] as num).toInt(),
  amountType: PaymentIntentParamMandateOptionsAmountType.fromJson(json['amount_type'] as String),
  description: json['description'] as String?,
  endDate: json['end_date'] != null ? (json['end_date'] as num).toInt() : null,
  interval: PaymentIntentParamMandateOptionsInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
  reference: json['reference'] as String,
  startDate: (json['start_date'] as num).toInt(),
  supportedTypes: (json['supported_types'] as List<dynamic>?)?.map((e) => PaymentIntentParamMandateOptionsSupportedTypes.fromJson(e as String)).toList(),
); }

final int amount;

final PaymentIntentParamMandateOptionsAmountType amountType;

final String? description;

final int? endDate;

final PaymentIntentParamMandateOptionsInterval interval;

final int? intervalCount;

final String reference;

final int startDate;

final List<PaymentIntentParamMandateOptionsSupportedTypes>? supportedTypes;

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
PaymentIntentParamMandateOptions copyWith({int? amount, PaymentIntentParamMandateOptionsAmountType? amountType, String Function()? description, int Function()? endDate, PaymentIntentParamMandateOptionsInterval? interval, int Function()? intervalCount, String? reference, int? startDate, List<PaymentIntentParamMandateOptionsSupportedTypes> Function()? supportedTypes, }) { return PaymentIntentParamMandateOptions(
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
      other is PaymentIntentParamMandateOptions &&
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
@override String toString() { return 'PaymentIntentParamMandateOptions(amount: $amount, amountType: $amountType, description: $description, endDate: $endDate, interval: $interval, intervalCount: $intervalCount, reference: $reference, startDate: $startDate, supportedTypes: $supportedTypes)'; } 
 }

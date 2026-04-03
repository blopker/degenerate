// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of dispute opened. Different case types may have varying fees and financial impact.
@immutable final class DisputePaymentMethodDetailsCardCaseType {const DisputePaymentMethodDetailsCardCaseType._(this.value);

factory DisputePaymentMethodDetailsCardCaseType.fromJson(String json) { return switch (json) {
  'block' => block,
  'chargeback' => chargeback,
  'compliance' => compliance,
  'inquiry' => inquiry,
  'resolution' => resolution,
  _ => DisputePaymentMethodDetailsCardCaseType._(json),
}; }

static const DisputePaymentMethodDetailsCardCaseType block = DisputePaymentMethodDetailsCardCaseType._('block');

static const DisputePaymentMethodDetailsCardCaseType chargeback = DisputePaymentMethodDetailsCardCaseType._('chargeback');

static const DisputePaymentMethodDetailsCardCaseType compliance = DisputePaymentMethodDetailsCardCaseType._('compliance');

static const DisputePaymentMethodDetailsCardCaseType inquiry = DisputePaymentMethodDetailsCardCaseType._('inquiry');

static const DisputePaymentMethodDetailsCardCaseType resolution = DisputePaymentMethodDetailsCardCaseType._('resolution');

static const List<DisputePaymentMethodDetailsCardCaseType> values = [block, chargeback, compliance, inquiry, resolution];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DisputePaymentMethodDetailsCardCaseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DisputePaymentMethodDetailsCardCaseType($value)'; } 
 }
/// 
@immutable final class DisputePaymentMethodDetailsCard {const DisputePaymentMethodDetailsCard({required this.brand, required this.caseType, this.networkReasonCode, });

factory DisputePaymentMethodDetailsCard.fromJson(Map<String, dynamic> json) { return DisputePaymentMethodDetailsCard(
  brand: json['brand'] as String,
  caseType: DisputePaymentMethodDetailsCardCaseType.fromJson(json['case_type'] as String),
  networkReasonCode: json['network_reason_code'] as String?,
); }

/// Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
final String brand;

/// The type of dispute opened. Different case types may have varying fees and financial impact.
final DisputePaymentMethodDetailsCardCaseType caseType;

/// The card network's specific dispute reason code, which maps to one of Stripe's primary dispute categories to simplify response guidance. The [Network code map](https://stripe.com/docs/disputes/categories#network-code-map) lists all available dispute reason codes by network.
final String? networkReasonCode;

Map<String, dynamic> toJson() { return {
  'brand': brand,
  'case_type': caseType.toJson(),
  'network_reason_code': ?networkReasonCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('brand') && json['brand'] is String &&
      json.containsKey('case_type'); } 
DisputePaymentMethodDetailsCard copyWith({String? brand, DisputePaymentMethodDetailsCardCaseType? caseType, String? Function()? networkReasonCode, }) { return DisputePaymentMethodDetailsCard(
  brand: brand ?? this.brand,
  caseType: caseType ?? this.caseType,
  networkReasonCode: networkReasonCode != null ? networkReasonCode() : this.networkReasonCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputePaymentMethodDetailsCard &&
          brand == other.brand &&
          caseType == other.caseType &&
          networkReasonCode == other.networkReasonCode; } 
@override int get hashCode { return Object.hash(brand, caseType, networkReasonCode); } 
@override String toString() { return 'DisputePaymentMethodDetailsCard(brand: $brand, caseType: $caseType, networkReasonCode: $networkReasonCode)'; } 
 }

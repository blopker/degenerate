// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_credit_grants_resource_monetary_amount.dart';/// The type of this amount. We currently only support `monetary` billing credits.
@immutable final class BillingCreditGrantsResourceAmountType {const BillingCreditGrantsResourceAmountType._(this.value);

factory BillingCreditGrantsResourceAmountType.fromJson(String json) { return switch (json) {
  'monetary' => monetary,
  _ => BillingCreditGrantsResourceAmountType._(json),
}; }

static const BillingCreditGrantsResourceAmountType monetary = BillingCreditGrantsResourceAmountType._('monetary');

static const List<BillingCreditGrantsResourceAmountType> values = [monetary];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingCreditGrantsResourceAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingCreditGrantsResourceAmountType($value)'; } 
 }
/// 
@immutable final class BillingCreditGrantsResourceAmount {const BillingCreditGrantsResourceAmount({required this.type, this.monetary, });

factory BillingCreditGrantsResourceAmount.fromJson(Map<String, dynamic> json) { return BillingCreditGrantsResourceAmount(
  monetary: json['monetary'] != null ? BillingCreditGrantsResourceMonetaryAmount.fromJson(json['monetary'] as Map<String, dynamic>) : null,
  type: BillingCreditGrantsResourceAmountType.fromJson(json['type'] as String),
); }

/// The monetary amount.
final BillingCreditGrantsResourceMonetaryAmount? monetary;

/// The type of this amount. We currently only support `monetary` billing credits.
final BillingCreditGrantsResourceAmountType type;

Map<String, dynamic> toJson() { return {
  if (monetary != null) 'monetary': monetary?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BillingCreditGrantsResourceAmount copyWith({BillingCreditGrantsResourceMonetaryAmount? Function()? monetary, BillingCreditGrantsResourceAmountType? type, }) { return BillingCreditGrantsResourceAmount(
  monetary: monetary != null ? monetary() : this.monetary,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingCreditGrantsResourceAmount &&
          monetary == other.monetary &&
          type == other.type; } 
@override int get hashCode { return Object.hash(monetary, type); } 
@override String toString() { return 'BillingCreditGrantsResourceAmount(monetary: $monetary, type: $type)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType {const PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType._(this.value);

factory PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType account = PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType._('account');

static const PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType self = PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType._('self');

static const List<PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType($value)'; } 
 }
@immutable final class PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability {const PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability({required this.type, this.account, });

factory PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability copyWith({String Function()? account, PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiabilityType? type, }) { return PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestAutomaticTaxLiability(account: $account, type: $type)'; } 
 }

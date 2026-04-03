// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType {const PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType._(this.value);

factory PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType account = PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType._('account');

static const PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType self = PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType._('self');

static const List<PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType($value)'; } 
 }
@immutable final class PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability {const PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability({required this.type, this.account, });

factory PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability copyWith({String Function()? account, PostPaymentLinksPaymentLinkRequestAutomaticTaxLiabilityType? type, }) { return PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestAutomaticTaxLiability(account: $account, type: $type)'; } 
 }

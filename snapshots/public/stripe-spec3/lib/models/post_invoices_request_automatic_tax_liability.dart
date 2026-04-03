// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesRequestAutomaticTaxLiabilityType {const PostInvoicesRequestAutomaticTaxLiabilityType._(this.value);

factory PostInvoicesRequestAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostInvoicesRequestAutomaticTaxLiabilityType._(json),
}; }

static const PostInvoicesRequestAutomaticTaxLiabilityType account = PostInvoicesRequestAutomaticTaxLiabilityType._('account');

static const PostInvoicesRequestAutomaticTaxLiabilityType self = PostInvoicesRequestAutomaticTaxLiabilityType._('self');

static const List<PostInvoicesRequestAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestAutomaticTaxLiabilityType($value)'; } 
 }
@immutable final class PostInvoicesRequestAutomaticTaxLiability {const PostInvoicesRequestAutomaticTaxLiability({required this.type, this.account, });

factory PostInvoicesRequestAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostInvoicesRequestAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostInvoicesRequestAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostInvoicesRequestAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostInvoicesRequestAutomaticTaxLiability copyWith({String Function()? account, PostInvoicesRequestAutomaticTaxLiabilityType? type, }) { return PostInvoicesRequestAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesRequestAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostInvoicesRequestAutomaticTaxLiability(account: $account, type: $type)'; } 
 }

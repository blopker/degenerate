// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestInvoiceSettingsIssuerType {const PostQuotesRequestInvoiceSettingsIssuerType._(this.value);

factory PostQuotesRequestInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostQuotesRequestInvoiceSettingsIssuerType._(json),
}; }

static const PostQuotesRequestInvoiceSettingsIssuerType account = PostQuotesRequestInvoiceSettingsIssuerType._('account');

static const PostQuotesRequestInvoiceSettingsIssuerType self = PostQuotesRequestInvoiceSettingsIssuerType._('self');

static const List<PostQuotesRequestInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestInvoiceSettingsIssuerType($value)'; } 
 }
@immutable final class PostQuotesRequestInvoiceSettingsIssuer {const PostQuotesRequestInvoiceSettingsIssuer({required this.type, this.account, });

factory PostQuotesRequestInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostQuotesRequestInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostQuotesRequestInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostQuotesRequestInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostQuotesRequestInvoiceSettingsIssuer copyWith({String Function()? account, PostQuotesRequestInvoiceSettingsIssuerType? type, }) { return PostQuotesRequestInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostQuotesRequestInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostQuotesRequestInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }

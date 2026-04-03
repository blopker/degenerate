// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType {const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType._(this.value);

factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType account = PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType._('account');

static const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType self = PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType._('self');

static const List<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType($value)'; } 
 }
@immutable final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer {const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer({required this.type, this.account, });

factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer(
  account: json['account'] as String?,
  type: PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer copyWith({String Function()? account, PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuerType? type, }) { return PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer(account: $account, type: $type)'; } 
 }

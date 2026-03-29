// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType {const PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType._(this.value);

factory PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType account = PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType._('account');

static const PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType self = PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType._('self');

static const List<PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType($value)'; } 
 }
final class PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer {const PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer({this.account, required this.type, });

factory PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer copyWith({String Function()? account, PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuerType? type, }) { return PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestSubscriptionDataInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }

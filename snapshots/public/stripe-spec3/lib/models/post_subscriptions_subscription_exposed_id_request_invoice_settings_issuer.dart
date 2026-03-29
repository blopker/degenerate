// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType {const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType account = PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._('account');

static const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType self = PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType._('self');

static const List<PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType($value)'; } 
 }
final class PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer {const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer({this.account, required this.type, });

factory PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer(
  account: json['account'] as String?,
  type: PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType.fromJson(json['type'] as String),
); }

final String? account;

final PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer copyWith({String Function()? account, PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuerType? type, }) { return PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsIssuer(account: $account, type: $type)'; } 
 }

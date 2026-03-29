// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxIdsRequestOwnerType {const PostTaxIdsRequestOwnerType._(this.value);

factory PostTaxIdsRequestOwnerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'application' => application,
  'customer' => customer,
  'self' => self,
  _ => PostTaxIdsRequestOwnerType._(json),
}; }

static const PostTaxIdsRequestOwnerType account = PostTaxIdsRequestOwnerType._('account');

static const PostTaxIdsRequestOwnerType application = PostTaxIdsRequestOwnerType._('application');

static const PostTaxIdsRequestOwnerType customer = PostTaxIdsRequestOwnerType._('customer');

static const PostTaxIdsRequestOwnerType self = PostTaxIdsRequestOwnerType._('self');

static const List<PostTaxIdsRequestOwnerType> values = [account, application, customer, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxIdsRequestOwnerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxIdsRequestOwnerType($value)'; } 
 }
/// The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
final class PostTaxIdsRequestOwner {const PostTaxIdsRequestOwner({this.account, this.customer, this.customerAccount, required this.type, });

factory PostTaxIdsRequestOwner.fromJson(Map<String, dynamic> json) { return PostTaxIdsRequestOwner(
  account: json['account'] as String?,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  type: PostTaxIdsRequestOwnerType.fromJson(json['type'] as String),
); }

final String? account;

final String? customer;

final String? customerAccount;

final PostTaxIdsRequestOwnerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxIdsRequestOwner copyWith({String Function()? account, String Function()? customer, String Function()? customerAccount, PostTaxIdsRequestOwnerType? type, }) { return PostTaxIdsRequestOwner(
  account: account != null ? account() : this.account,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxIdsRequestOwner &&
          account == other.account &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, customer, customerAccount, type); } 
@override String toString() { return 'PostTaxIdsRequestOwner(account: $account, customer: $customer, customerAccount: $customerAccount, type: $type)'; } 
 }

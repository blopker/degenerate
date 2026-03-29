// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_account_links_request_collection_options.dart';/// The collect parameter is deprecated. Use `collection_options` instead.
final class PostAccountLinksRequestCollect {const PostAccountLinksRequestCollect._(this.value);

factory PostAccountLinksRequestCollect.fromJson(String json) { return switch (json) {
  'currently_due' => currentlyDue,
  'eventually_due' => eventuallyDue,
  _ => PostAccountLinksRequestCollect._(json),
}; }

static const PostAccountLinksRequestCollect currentlyDue = PostAccountLinksRequestCollect._('currently_due');

static const PostAccountLinksRequestCollect eventuallyDue = PostAccountLinksRequestCollect._('eventually_due');

static const List<PostAccountLinksRequestCollect> values = [currentlyDue, eventuallyDue];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountLinksRequestCollect && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountLinksRequestCollect($value)'; } 
 }
/// The type of account link the user is requesting.
/// 
/// You can create Account Links of type `account_update` only for connected accounts where your platform is responsible for collecting requirements, including Custom accounts. You can't create them for accounts that have access to a Stripe-hosted Dashboard. If you use [Connect embedded components](/connect/get-started-connect-embedded-components), you can include components that allow your connected accounts to update their own information. For an account without Stripe-hosted Dashboard access where Stripe is liable for negative balances, you must use embedded components.
final class PostAccountLinksRequestType {const PostAccountLinksRequestType._(this.value);

factory PostAccountLinksRequestType.fromJson(String json) { return switch (json) {
  'account_onboarding' => accountOnboarding,
  'account_update' => accountUpdate,
  _ => PostAccountLinksRequestType._(json),
}; }

static const PostAccountLinksRequestType accountOnboarding = PostAccountLinksRequestType._('account_onboarding');

static const PostAccountLinksRequestType accountUpdate = PostAccountLinksRequestType._('account_update');

static const List<PostAccountLinksRequestType> values = [accountOnboarding, accountUpdate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountLinksRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountLinksRequestType($value)'; } 
 }
final class PostAccountLinksRequest {const PostAccountLinksRequest({required this.account, this.collect, this.collectionOptions, this.expand, this.refreshUrl, this.returnUrl, required this.type, });

factory PostAccountLinksRequest.fromJson(Map<String, dynamic> json) { return PostAccountLinksRequest(
  account: json['account'] as String,
  collect: json['collect'] != null ? PostAccountLinksRequestCollect.fromJson(json['collect'] as String) : null,
  collectionOptions: json['collection_options'] != null ? PostAccountLinksRequestCollectionOptions.fromJson(json['collection_options'] as Map<String, dynamic>) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  refreshUrl: json['refresh_url'] as String?,
  returnUrl: json['return_url'] as String?,
  type: PostAccountLinksRequestType.fromJson(json['type'] as String),
); }

/// The identifier of the account to create an account link for.
final String account;

/// The collect parameter is deprecated. Use `collection_options` instead.
final PostAccountLinksRequestCollect? collect;

/// Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
final PostAccountLinksRequestCollectionOptions? collectionOptions;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link's URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
final String? refreshUrl;

/// The URL that the user will be redirected to upon leaving or completing the linked flow.
final String? returnUrl;

/// The type of account link the user is requesting.
/// 
/// You can create Account Links of type `account_update` only for connected accounts where your platform is responsible for collecting requirements, including Custom accounts. You can't create them for accounts that have access to a Stripe-hosted Dashboard. If you use [Connect embedded components](/connect/get-started-connect-embedded-components), you can include components that allow your connected accounts to update their own information. For an account without Stripe-hosted Dashboard access where Stripe is liable for negative balances, you must use embedded components.
final PostAccountLinksRequestType type;

Map<String, dynamic> toJson() { return {
  'account': account,
  if (collect != null) 'collect': collect?.toJson(),
  if (collectionOptions != null) 'collection_options': collectionOptions?.toJson(),
  'expand': ?expand,
  'refresh_url': ?refreshUrl,
  'return_url': ?returnUrl,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') && json['account'] is String &&
      json.containsKey('type'); } 
PostAccountLinksRequest copyWith({String? account, PostAccountLinksRequestCollect Function()? collect, PostAccountLinksRequestCollectionOptions Function()? collectionOptions, List<String> Function()? expand, String Function()? refreshUrl, String Function()? returnUrl, PostAccountLinksRequestType? type, }) { return PostAccountLinksRequest(
  account: account ?? this.account,
  collect: collect != null ? collect() : this.collect,
  collectionOptions: collectionOptions != null ? collectionOptions() : this.collectionOptions,
  expand: expand != null ? expand() : this.expand,
  refreshUrl: refreshUrl != null ? refreshUrl() : this.refreshUrl,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountLinksRequest &&
          account == other.account &&
          collect == other.collect &&
          collectionOptions == other.collectionOptions &&
          listEquals(expand, other.expand) &&
          refreshUrl == other.refreshUrl &&
          returnUrl == other.returnUrl &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, collect, collectionOptions, Object.hashAll(expand ?? const []), refreshUrl, returnUrl, type); } 
@override String toString() { return 'PostAccountLinksRequest(account: $account, collect: $collect, collectionOptions: $collectionOptions, expand: $expand, refreshUrl: $refreshUrl, returnUrl: $returnUrl, type: $type)'; } 
 }

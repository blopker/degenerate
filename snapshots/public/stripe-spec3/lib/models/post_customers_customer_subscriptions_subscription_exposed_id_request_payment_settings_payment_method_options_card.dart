// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_payment_method_options_param2.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard({this.subscriptionPaymentMethodOptionsParam2 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard._({required this.rawValue, required this.subscriptionPaymentMethodOptionsParam2,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    subscriptionPaymentMethodOptionsParam2: parseAnyOfVariant<SubscriptionPaymentMethodOptionsParam2>(json, (value) => SubscriptionPaymentMethodOptionsParam2.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SubscriptionPaymentMethodOptionsParam2> subscriptionPaymentMethodOptionsParam2;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => subscriptionPaymentMethodOptionsParam2.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (subscriptionPaymentMethodOptionsParam2.isPresent) subscriptionPaymentMethodOptionsParam2.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard(${toJson()})';
}

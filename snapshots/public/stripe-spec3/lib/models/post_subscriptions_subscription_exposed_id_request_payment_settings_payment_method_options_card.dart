// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_payment_method_options_param4.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2($value)';}
}

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard {
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard({this.subscriptionPaymentMethodOptionsParam4 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard._({required this.rawValue, required this.subscriptionPaymentMethodOptionsParam4,
required this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    subscriptionPaymentMethodOptionsParam4: parseAnyOfVariant<SubscriptionPaymentMethodOptionsParam4>(json, (value) => SubscriptionPaymentMethodOptionsParam4.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SubscriptionPaymentMethodOptionsParam4> subscriptionPaymentMethodOptionsParam4;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2> postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => subscriptionPaymentMethodOptionsParam4.isPresent || postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (subscriptionPaymentMethodOptionsParam4.isPresent) subscriptionPaymentMethodOptionsParam4.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCard(${toJson()})';
}

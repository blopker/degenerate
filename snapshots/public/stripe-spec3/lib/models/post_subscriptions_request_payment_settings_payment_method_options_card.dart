// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_payment_method_options_param3.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(json),
}; }

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard({this.subscriptionPaymentMethodOptionsParam3 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard._({required this.rawValue, required this.subscriptionPaymentMethodOptionsParam3,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    subscriptionPaymentMethodOptionsParam3: parseAnyOfVariant<SubscriptionPaymentMethodOptionsParam3>(json, (value) => SubscriptionPaymentMethodOptionsParam3.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SubscriptionPaymentMethodOptionsParam3> subscriptionPaymentMethodOptionsParam3;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => subscriptionPaymentMethodOptionsParam3.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (subscriptionPaymentMethodOptionsParam3.isPresent) subscriptionPaymentMethodOptionsParam3.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCard(${toJson()})';
}

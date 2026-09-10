// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_klarna_subscriptions_variant1.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 {const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 $empty = PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptions {
  const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptions({this.listPostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1 = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptions._({required this.rawValue, required this.listPostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1,
required this.postSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2,});
  factory PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptions.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptions._(
    rawValue: Omittable(json),
    listPostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1: parseAnyOfVariant<List<PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>> listPostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1;
final Omittable<PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> postSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent || postSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent) listPostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent) postSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptions(${toJson()})';
}

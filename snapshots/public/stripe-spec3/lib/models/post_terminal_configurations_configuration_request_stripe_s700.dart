// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stripe_s700.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestStripeS700Variant2 {const PostTerminalConfigurationsConfigurationRequestStripeS700Variant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestStripeS700Variant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestStripeS700Variant2._(json),
};}

static const PostTerminalConfigurationsConfigurationRequestStripeS700Variant2 $empty = PostTerminalConfigurationsConfigurationRequestStripeS700Variant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestStripeS700Variant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestStripeS700Variant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsConfigurationRequestStripeS700Variant2($value)';}
}
/// An object containing device type specific settings for Stripe S700 readers.
@immutable
final class PostTerminalConfigurationsConfigurationRequestStripeS700 {
  const PostTerminalConfigurationsConfigurationRequestStripeS700({this.stripeS700 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestStripeS700Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestStripeS700._({required this.rawValue, required this.stripeS700,
required this.postTerminalConfigurationsConfigurationRequestStripeS700Variant2,});
  factory PostTerminalConfigurationsConfigurationRequestStripeS700.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestStripeS700._(
    rawValue: Omittable(json),
    stripeS700: parseAnyOfVariant<StripeS700>(json, (value) => StripeS700.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestStripeS700Variant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestStripeS700Variant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestStripeS700Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<StripeS700> stripeS700;
final Omittable<PostTerminalConfigurationsConfigurationRequestStripeS700Variant2> postTerminalConfigurationsConfigurationRequestStripeS700Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => stripeS700.isPresent || postTerminalConfigurationsConfigurationRequestStripeS700Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (stripeS700.isPresent) stripeS700.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestStripeS700Variant2.isPresent) postTerminalConfigurationsConfigurationRequestStripeS700Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestStripeS700 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestStripeS700(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stripe_s710.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestStripeS710Variant2 {const PostTerminalConfigurationsConfigurationRequestStripeS710Variant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestStripeS710Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestStripeS710Variant2._(json),
}; }

static const PostTerminalConfigurationsConfigurationRequestStripeS710Variant2 $empty = PostTerminalConfigurationsConfigurationRequestStripeS710Variant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestStripeS710Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestStripeS710Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsConfigurationRequestStripeS710Variant2($value)'; } 
 }
/// An object containing device type specific settings for Stripe S710 readers.
@immutable
final class PostTerminalConfigurationsConfigurationRequestStripeS710 {
  const PostTerminalConfigurationsConfigurationRequestStripeS710({this.stripeS710 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestStripeS710Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestStripeS710._({required this.rawValue, required this.stripeS710,
required this.postTerminalConfigurationsConfigurationRequestStripeS710Variant2,});
  factory PostTerminalConfigurationsConfigurationRequestStripeS710.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestStripeS710._(
    rawValue: Omittable(json),
    stripeS710: parseAnyOfVariant<StripeS710>(json, (value) => StripeS710.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestStripeS710Variant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestStripeS710Variant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestStripeS710Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<StripeS710> stripeS710;
final Omittable<PostTerminalConfigurationsConfigurationRequestStripeS710Variant2> postTerminalConfigurationsConfigurationRequestStripeS710Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => stripeS710.isPresent || postTerminalConfigurationsConfigurationRequestStripeS710Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (stripeS710.isPresent) stripeS710.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestStripeS710Variant2.isPresent) postTerminalConfigurationsConfigurationRequestStripeS710Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestStripeS710 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestStripeS710(${toJson()})';
}

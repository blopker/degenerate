// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StripeS710SplashscreenVariant2 {const StripeS710SplashscreenVariant2._(this.value);

factory StripeS710SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => StripeS710SplashscreenVariant2._(json),
}; }

static const StripeS710SplashscreenVariant2 $empty = StripeS710SplashscreenVariant2._('');

static const List<StripeS710SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StripeS710SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StripeS710SplashscreenVariant2($value)'; } 
 }

@immutable
final class StripeS710Splashscreen {
  const StripeS710Splashscreen({this.string = const Omittable.absent(),
this.stripeS710SplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const StripeS710Splashscreen._({required this.rawValue, required this.string,
required this.stripeS710SplashscreenVariant2,});
  factory StripeS710Splashscreen.fromJson(Object? json) => StripeS710Splashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
stripeS710SplashscreenVariant2: parseAnyOfVariant<StripeS710SplashscreenVariant2>(json, (value) => StripeS710SplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<StripeS710SplashscreenVariant2> stripeS710SplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || stripeS710SplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (stripeS710SplashscreenVariant2.isPresent) stripeS710SplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is StripeS710Splashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'StripeS710Splashscreen(${toJson()})';
}

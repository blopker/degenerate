// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StripeS700SplashscreenVariant2 {const StripeS700SplashscreenVariant2._(this.value);

factory StripeS700SplashscreenVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => StripeS700SplashscreenVariant2._(json),
};}

static const StripeS700SplashscreenVariant2 $empty = StripeS700SplashscreenVariant2._('');

static const List<StripeS700SplashscreenVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is StripeS700SplashscreenVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'StripeS700SplashscreenVariant2($value)';}
}

@immutable
final class StripeS700Splashscreen {
  const StripeS700Splashscreen({this.string = const Omittable.absent(),
this.stripeS700SplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const StripeS700Splashscreen._({required this.rawValue, required this.string,
required this.stripeS700SplashscreenVariant2,});
  factory StripeS700Splashscreen.fromJson(Object? json) => StripeS700Splashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
stripeS700SplashscreenVariant2: parseAnyOfVariant<StripeS700SplashscreenVariant2>(json, (value) => StripeS700SplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<StripeS700SplashscreenVariant2> stripeS700SplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || stripeS700SplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (stripeS700SplashscreenVariant2.isPresent) stripeS700SplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is StripeS700Splashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'StripeS700Splashscreen(${toJson()})';
}

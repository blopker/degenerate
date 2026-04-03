// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StripeS700SplashscreenVariant2 {const StripeS700SplashscreenVariant2._(this.value);

factory StripeS700SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => StripeS700SplashscreenVariant2._(json),
}; }

static const StripeS700SplashscreenVariant2 $empty = StripeS700SplashscreenVariant2._('');

static const List<StripeS700SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StripeS700SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StripeS700SplashscreenVariant2($value)'; } 
 }
typedef StripeS700Splashscreen = OneOf2<String,StripeS700SplashscreenVariant2>;

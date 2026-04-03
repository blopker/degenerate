// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VerifoneP400SplashscreenVariant2 {const VerifoneP400SplashscreenVariant2._(this.value);

factory VerifoneP400SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => VerifoneP400SplashscreenVariant2._(json),
}; }

static const VerifoneP400SplashscreenVariant2 $empty = VerifoneP400SplashscreenVariant2._('');

static const List<VerifoneP400SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VerifoneP400SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VerifoneP400SplashscreenVariant2($value)'; } 
 }
typedef VerifoneP400Splashscreen = OneOf2<String,VerifoneP400SplashscreenVariant2>;

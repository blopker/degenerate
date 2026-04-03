// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BbposWisePoseSplashscreenVariant2 {const BbposWisePoseSplashscreenVariant2._(this.value);

factory BbposWisePoseSplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => BbposWisePoseSplashscreenVariant2._(json),
}; }

static const BbposWisePoseSplashscreenVariant2 $empty = BbposWisePoseSplashscreenVariant2._('');

static const List<BbposWisePoseSplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BbposWisePoseSplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BbposWisePoseSplashscreenVariant2($value)'; } 
 }
typedef BbposWisePoseSplashscreen = OneOf2<String,BbposWisePoseSplashscreenVariant2>;

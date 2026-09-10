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

@immutable
final class BbposWisePoseSplashscreen {
  const BbposWisePoseSplashscreen({this.string = const Omittable.absent(),
this.bbposWisePoseSplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BbposWisePoseSplashscreen._({required this.rawValue, required this.string,
required this.bbposWisePoseSplashscreenVariant2,});
  factory BbposWisePoseSplashscreen.fromJson(Object? json) => BbposWisePoseSplashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
bbposWisePoseSplashscreenVariant2: parseAnyOfVariant<BbposWisePoseSplashscreenVariant2>(json, (value) => BbposWisePoseSplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BbposWisePoseSplashscreenVariant2> bbposWisePoseSplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || bbposWisePoseSplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (bbposWisePoseSplashscreenVariant2.isPresent) bbposWisePoseSplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BbposWisePoseSplashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BbposWisePoseSplashscreen(${toJson()})';
}

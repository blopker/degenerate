// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BbposWisePad3SplashscreenVariant2 {const BbposWisePad3SplashscreenVariant2._(this.value);

factory BbposWisePad3SplashscreenVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => BbposWisePad3SplashscreenVariant2._(json),
};}

static const BbposWisePad3SplashscreenVariant2 $empty = BbposWisePad3SplashscreenVariant2._('');

static const List<BbposWisePad3SplashscreenVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is BbposWisePad3SplashscreenVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'BbposWisePad3SplashscreenVariant2($value)';}
}

@immutable
final class BbposWisePad3Splashscreen {
  const BbposWisePad3Splashscreen({this.string = const Omittable.absent(),
this.bbposWisePad3SplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BbposWisePad3Splashscreen._({required this.rawValue, required this.string,
required this.bbposWisePad3SplashscreenVariant2,});
  factory BbposWisePad3Splashscreen.fromJson(Object? json) => BbposWisePad3Splashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
bbposWisePad3SplashscreenVariant2: parseAnyOfVariant<BbposWisePad3SplashscreenVariant2>(json, (value) => BbposWisePad3SplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BbposWisePad3SplashscreenVariant2> bbposWisePad3SplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || bbposWisePad3SplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (bbposWisePad3SplashscreenVariant2.isPresent) bbposWisePad3SplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BbposWisePad3Splashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BbposWisePad3Splashscreen(${toJson()})';
}

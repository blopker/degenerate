// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VerifoneP400SplashscreenVariant2 {const VerifoneP400SplashscreenVariant2._(this.value);

factory VerifoneP400SplashscreenVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => VerifoneP400SplashscreenVariant2._(json),
};}

static const VerifoneP400SplashscreenVariant2 $empty = VerifoneP400SplashscreenVariant2._('');

static const List<VerifoneP400SplashscreenVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is VerifoneP400SplashscreenVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'VerifoneP400SplashscreenVariant2($value)';}
}

@immutable
final class VerifoneP400Splashscreen {
  const VerifoneP400Splashscreen({this.string = const Omittable.absent(),
this.verifoneP400SplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const VerifoneP400Splashscreen._({required this.rawValue, required this.string,
required this.verifoneP400SplashscreenVariant2,});
  factory VerifoneP400Splashscreen.fromJson(Object? json) => VerifoneP400Splashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
verifoneP400SplashscreenVariant2: parseAnyOfVariant<VerifoneP400SplashscreenVariant2>(json, (value) => VerifoneP400SplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<VerifoneP400SplashscreenVariant2> verifoneP400SplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || verifoneP400SplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (verifoneP400SplashscreenVariant2.isPresent) verifoneP400SplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is VerifoneP400Splashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'VerifoneP400Splashscreen(${toJson()})';
}

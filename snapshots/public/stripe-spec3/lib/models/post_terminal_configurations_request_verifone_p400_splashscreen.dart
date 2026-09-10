// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2 {const PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2 $empty = PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2($value)'; } 
 }

@immutable
final class PostTerminalConfigurationsRequestVerifoneP400Splashscreen {
  const PostTerminalConfigurationsRequestVerifoneP400Splashscreen({this.string = const Omittable.absent(),
this.postTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestVerifoneP400Splashscreen._({required this.rawValue, required this.string,
required this.postTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2,});
  factory PostTerminalConfigurationsRequestVerifoneP400Splashscreen.fromJson(Object? json) => PostTerminalConfigurationsRequestVerifoneP400Splashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2>(json, (value) => PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2> postTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2.isPresent) postTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestVerifoneP400Splashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestVerifoneP400Splashscreen(${toJson()})';
}

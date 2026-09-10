// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2 {const PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2 $empty = PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2($value)'; } 
 }

@immutable
final class PostTerminalConfigurationsRequestStripeS710Splashscreen {
  const PostTerminalConfigurationsRequestStripeS710Splashscreen({this.string = const Omittable.absent(),
this.postTerminalConfigurationsRequestStripeS710SplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestStripeS710Splashscreen._({required this.rawValue, required this.string,
required this.postTerminalConfigurationsRequestStripeS710SplashscreenVariant2,});
  factory PostTerminalConfigurationsRequestStripeS710Splashscreen.fromJson(Object? json) => PostTerminalConfigurationsRequestStripeS710Splashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalConfigurationsRequestStripeS710SplashscreenVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2>(json, (value) => PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2> postTerminalConfigurationsRequestStripeS710SplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalConfigurationsRequestStripeS710SplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalConfigurationsRequestStripeS710SplashscreenVariant2.isPresent) postTerminalConfigurationsRequestStripeS710SplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestStripeS710Splashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestStripeS710Splashscreen(${toJson()})';
}

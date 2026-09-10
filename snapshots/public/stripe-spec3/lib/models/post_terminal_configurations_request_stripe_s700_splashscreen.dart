// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2 {const PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2._(json),
};}

static const PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2 $empty = PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2($value)';}
}

@immutable
final class PostTerminalConfigurationsRequestStripeS700Splashscreen {
  const PostTerminalConfigurationsRequestStripeS700Splashscreen({this.string = const Omittable.absent(),
this.postTerminalConfigurationsRequestStripeS700SplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestStripeS700Splashscreen._({required this.rawValue, required this.string,
required this.postTerminalConfigurationsRequestStripeS700SplashscreenVariant2,});
  factory PostTerminalConfigurationsRequestStripeS700Splashscreen.fromJson(Object? json) => PostTerminalConfigurationsRequestStripeS700Splashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalConfigurationsRequestStripeS700SplashscreenVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2>(json, (value) => PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2> postTerminalConfigurationsRequestStripeS700SplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalConfigurationsRequestStripeS700SplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalConfigurationsRequestStripeS700SplashscreenVariant2.isPresent) postTerminalConfigurationsRequestStripeS700SplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestStripeS700Splashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestStripeS700Splashscreen(${toJson()})';
}

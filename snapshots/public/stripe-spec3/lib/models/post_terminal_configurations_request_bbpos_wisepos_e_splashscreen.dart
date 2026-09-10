// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2 {const PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2 $empty = PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2($value)'; } 
 }

@immutable
final class PostTerminalConfigurationsRequestBbposWiseposESplashscreen {
  const PostTerminalConfigurationsRequestBbposWiseposESplashscreen({this.string = const Omittable.absent(),
this.postTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestBbposWiseposESplashscreen._({required this.rawValue, required this.string,
required this.postTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2,});
  factory PostTerminalConfigurationsRequestBbposWiseposESplashscreen.fromJson(Object? json) => PostTerminalConfigurationsRequestBbposWiseposESplashscreen._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2>(json, (value) => PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2> postTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2.isPresent) postTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestBbposWiseposESplashscreen && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestBbposWiseposESplashscreen(${toJson()})';
}

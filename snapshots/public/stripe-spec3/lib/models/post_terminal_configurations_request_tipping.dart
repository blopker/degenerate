// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tipping.dart';@immutable final class PostTerminalConfigurationsRequestTippingVariant2 {const PostTerminalConfigurationsRequestTippingVariant2._(this.value);

factory PostTerminalConfigurationsRequestTippingVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestTippingVariant2._(json),
};}

static const PostTerminalConfigurationsRequestTippingVariant2 $empty = PostTerminalConfigurationsRequestTippingVariant2._('');

static const List<PostTerminalConfigurationsRequestTippingVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsRequestTippingVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsRequestTippingVariant2($value)';}
}
/// Tipping configurations for readers that support on-reader tips.
@immutable
final class PostTerminalConfigurationsRequestTipping {
  const PostTerminalConfigurationsRequestTipping({this.tipping = const Omittable.absent(),
this.postTerminalConfigurationsRequestTippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsRequestTipping._({required this.rawValue, required this.tipping,
required this.postTerminalConfigurationsRequestTippingVariant2,});
  factory PostTerminalConfigurationsRequestTipping.fromJson(Object? json) => PostTerminalConfigurationsRequestTipping._(
    rawValue: Omittable(json),
    tipping: parseAnyOfVariant<Tipping>(json, (value) => Tipping.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsRequestTippingVariant2: parseAnyOfVariant<PostTerminalConfigurationsRequestTippingVariant2>(json, (value) => PostTerminalConfigurationsRequestTippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Tipping> tipping;
final Omittable<PostTerminalConfigurationsRequestTippingVariant2> postTerminalConfigurationsRequestTippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => tipping.isPresent || postTerminalConfigurationsRequestTippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (tipping.isPresent) tipping.value?.toJson(),
if (postTerminalConfigurationsRequestTippingVariant2.isPresent) postTerminalConfigurationsRequestTippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsRequestTipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsRequestTipping(${toJson()})';
}

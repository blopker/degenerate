// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'verifone_p400.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2 {const PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2._(json),
};}

static const PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2 $empty = PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2($value)';}
}
/// An object containing device type specific settings for Verifone P400 readers.
@immutable
final class PostTerminalConfigurationsConfigurationRequestVerifoneP400 {
  const PostTerminalConfigurationsConfigurationRequestVerifoneP400({this.verifoneP400 = const Omittable.absent(),
this.postTerminalConfigurationsConfigurationRequestVerifoneP400Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalConfigurationsConfigurationRequestVerifoneP400._({required this.rawValue, required this.verifoneP400,
required this.postTerminalConfigurationsConfigurationRequestVerifoneP400Variant2,});
  factory PostTerminalConfigurationsConfigurationRequestVerifoneP400.fromJson(Object? json) => PostTerminalConfigurationsConfigurationRequestVerifoneP400._(
    rawValue: Omittable(json),
    verifoneP400: parseAnyOfVariant<VerifoneP400>(json, (value) => VerifoneP400.fromJson(value! as Map<String, dynamic>)),
postTerminalConfigurationsConfigurationRequestVerifoneP400Variant2: parseAnyOfVariant<PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2>(json, (value) => PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<VerifoneP400> verifoneP400;
final Omittable<PostTerminalConfigurationsConfigurationRequestVerifoneP400Variant2> postTerminalConfigurationsConfigurationRequestVerifoneP400Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => verifoneP400.isPresent || postTerminalConfigurationsConfigurationRequestVerifoneP400Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (verifoneP400.isPresent) verifoneP400.value?.toJson(),
if (postTerminalConfigurationsConfigurationRequestVerifoneP400Variant2.isPresent) postTerminalConfigurationsConfigurationRequestVerifoneP400Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalConfigurationsConfigurationRequestVerifoneP400 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalConfigurationsConfigurationRequestVerifoneP400(${toJson()})';
}

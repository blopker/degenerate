// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalLocationsLocationRequestPhoneVariant2 {const PostTerminalLocationsLocationRequestPhoneVariant2._(this.value);

factory PostTerminalLocationsLocationRequestPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsLocationRequestPhoneVariant2._(json),
};}

static const PostTerminalLocationsLocationRequestPhoneVariant2 $empty = PostTerminalLocationsLocationRequestPhoneVariant2._('');

static const List<PostTerminalLocationsLocationRequestPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalLocationsLocationRequestPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalLocationsLocationRequestPhoneVariant2($value)';}
}
/// The phone number for the location.
@immutable
final class PostTerminalLocationsLocationRequestPhone {
  const PostTerminalLocationsLocationRequestPhone({this.string = const Omittable.absent(),
this.postTerminalLocationsLocationRequestPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalLocationsLocationRequestPhone._({required this.rawValue, required this.string,
required this.postTerminalLocationsLocationRequestPhoneVariant2,});
  factory PostTerminalLocationsLocationRequestPhone.fromJson(Object? json) => PostTerminalLocationsLocationRequestPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalLocationsLocationRequestPhoneVariant2: parseAnyOfVariant<PostTerminalLocationsLocationRequestPhoneVariant2>(json, (value) => PostTerminalLocationsLocationRequestPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalLocationsLocationRequestPhoneVariant2> postTerminalLocationsLocationRequestPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalLocationsLocationRequestPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalLocationsLocationRequestPhoneVariant2.isPresent) postTerminalLocationsLocationRequestPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalLocationsLocationRequestPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalLocationsLocationRequestPhone(${toJson()})';
}

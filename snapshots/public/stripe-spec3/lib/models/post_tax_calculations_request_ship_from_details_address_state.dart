// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2 {const PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2._(this.value);

factory PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2._(json),
};}

static const PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2 $empty = PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2._('');

static const List<PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2($value)';}
}

@immutable
final class PostTaxCalculationsRequestShipFromDetailsAddressState {
  const PostTaxCalculationsRequestShipFromDetailsAddressState({this.string = const Omittable.absent(),
this.postTaxCalculationsRequestShipFromDetailsAddressStateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxCalculationsRequestShipFromDetailsAddressState._({required this.rawValue, required this.string,
required this.postTaxCalculationsRequestShipFromDetailsAddressStateVariant2,});
  factory PostTaxCalculationsRequestShipFromDetailsAddressState.fromJson(Object? json) => PostTaxCalculationsRequestShipFromDetailsAddressState._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTaxCalculationsRequestShipFromDetailsAddressStateVariant2: parseAnyOfVariant<PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2>(json, (value) => PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTaxCalculationsRequestShipFromDetailsAddressStateVariant2> postTaxCalculationsRequestShipFromDetailsAddressStateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTaxCalculationsRequestShipFromDetailsAddressStateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTaxCalculationsRequestShipFromDetailsAddressStateVariant2.isPresent) postTaxCalculationsRequestShipFromDetailsAddressStateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxCalculationsRequestShipFromDetailsAddressState && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxCalculationsRequestShipFromDetailsAddressState(${toJson()})';
}

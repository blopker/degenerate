// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersRequestBusinessNameVariant2 {const PostCustomersRequestBusinessNameVariant2._(this.value);

factory PostCustomersRequestBusinessNameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersRequestBusinessNameVariant2._(json),
};}

static const PostCustomersRequestBusinessNameVariant2 $empty = PostCustomersRequestBusinessNameVariant2._('');

static const List<PostCustomersRequestBusinessNameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersRequestBusinessNameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersRequestBusinessNameVariant2($value)';}
}
/// The customer's business name. This may be up to *150 characters*.
@immutable
final class PostCustomersRequestBusinessName {
  const PostCustomersRequestBusinessName({this.string = const Omittable.absent(),
this.postCustomersRequestBusinessNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersRequestBusinessName._({required this.rawValue, required this.string,
required this.postCustomersRequestBusinessNameVariant2,});
  factory PostCustomersRequestBusinessName.fromJson(Object? json) => PostCustomersRequestBusinessName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCustomersRequestBusinessNameVariant2: parseAnyOfVariant<PostCustomersRequestBusinessNameVariant2>(json, (value) => PostCustomersRequestBusinessNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCustomersRequestBusinessNameVariant2> postCustomersRequestBusinessNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCustomersRequestBusinessNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCustomersRequestBusinessNameVariant2.isPresent) postCustomersRequestBusinessNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersRequestBusinessName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersRequestBusinessName(${toJson()})';
}

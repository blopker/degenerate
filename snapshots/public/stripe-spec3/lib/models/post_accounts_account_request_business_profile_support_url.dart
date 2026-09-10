// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestBusinessProfileSupportUrlVariant2 {const PostAccountsAccountRequestBusinessProfileSupportUrlVariant2._(this.value);

factory PostAccountsAccountRequestBusinessProfileSupportUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestBusinessProfileSupportUrlVariant2._(json),
};}

static const PostAccountsAccountRequestBusinessProfileSupportUrlVariant2 $empty = PostAccountsAccountRequestBusinessProfileSupportUrlVariant2._('');

static const List<PostAccountsAccountRequestBusinessProfileSupportUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountRequestBusinessProfileSupportUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountRequestBusinessProfileSupportUrlVariant2($value)';}
}

@immutable
final class PostAccountsAccountRequestBusinessProfileSupportUrl {
  const PostAccountsAccountRequestBusinessProfileSupportUrl({this.string = const Omittable.absent(),
this.postAccountsAccountRequestBusinessProfileSupportUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestBusinessProfileSupportUrl._({required this.rawValue, required this.string,
required this.postAccountsAccountRequestBusinessProfileSupportUrlVariant2,});
  factory PostAccountsAccountRequestBusinessProfileSupportUrl.fromJson(Object? json) => PostAccountsAccountRequestBusinessProfileSupportUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountRequestBusinessProfileSupportUrlVariant2: parseAnyOfVariant<PostAccountsAccountRequestBusinessProfileSupportUrlVariant2>(json, (value) => PostAccountsAccountRequestBusinessProfileSupportUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountRequestBusinessProfileSupportUrlVariant2> postAccountsAccountRequestBusinessProfileSupportUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountRequestBusinessProfileSupportUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountRequestBusinessProfileSupportUrlVariant2.isPresent) postAccountsAccountRequestBusinessProfileSupportUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestBusinessProfileSupportUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestBusinessProfileSupportUrl(${toJson()})';
}

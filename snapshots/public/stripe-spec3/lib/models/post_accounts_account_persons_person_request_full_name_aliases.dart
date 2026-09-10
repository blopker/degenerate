// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2 {const PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2._(json),
};}

static const PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2 $empty = PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2($value)';}
}
/// A list of alternate names or aliases that the person is known by.
@immutable
final class PostAccountsAccountPersonsPersonRequestFullNameAliases {
  const PostAccountsAccountPersonsPersonRequestFullNameAliases({this.listString = const Omittable.absent(),
this.postAccountsAccountPersonsPersonRequestFullNameAliasesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsPersonRequestFullNameAliases._({required this.rawValue, required this.listString,
required this.postAccountsAccountPersonsPersonRequestFullNameAliasesVariant2,});
  factory PostAccountsAccountPersonsPersonRequestFullNameAliases.fromJson(Object? json) => PostAccountsAccountPersonsPersonRequestFullNameAliases._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postAccountsAccountPersonsPersonRequestFullNameAliasesVariant2: parseAnyOfVariant<PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2>(json, (value) => PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostAccountsAccountPersonsPersonRequestFullNameAliasesVariant2> postAccountsAccountPersonsPersonRequestFullNameAliasesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postAccountsAccountPersonsPersonRequestFullNameAliasesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postAccountsAccountPersonsPersonRequestFullNameAliasesVariant2.isPresent) postAccountsAccountPersonsPersonRequestFullNameAliasesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestFullNameAliases && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsPersonRequestFullNameAliases(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCreditNotesRequestLinesTaxRatesVariant2 {const PostCreditNotesRequestLinesTaxRatesVariant2._(this.value);

factory PostCreditNotesRequestLinesTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCreditNotesRequestLinesTaxRatesVariant2._(json),
};}

static const PostCreditNotesRequestLinesTaxRatesVariant2 $empty = PostCreditNotesRequestLinesTaxRatesVariant2._('');

static const List<PostCreditNotesRequestLinesTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCreditNotesRequestLinesTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCreditNotesRequestLinesTaxRatesVariant2($value)';}
}

@immutable
final class PostCreditNotesRequestLinesTaxRates {
  const PostCreditNotesRequestLinesTaxRates({this.listString = const Omittable.absent(),
this.postCreditNotesRequestLinesTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCreditNotesRequestLinesTaxRates._({required this.rawValue, required this.listString,
required this.postCreditNotesRequestLinesTaxRatesVariant2,});
  factory PostCreditNotesRequestLinesTaxRates.fromJson(Object? json) => PostCreditNotesRequestLinesTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCreditNotesRequestLinesTaxRatesVariant2: parseAnyOfVariant<PostCreditNotesRequestLinesTaxRatesVariant2>(json, (value) => PostCreditNotesRequestLinesTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCreditNotesRequestLinesTaxRatesVariant2> postCreditNotesRequestLinesTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCreditNotesRequestLinesTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCreditNotesRequestLinesTaxRatesVariant2.isPresent) postCreditNotesRequestLinesTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCreditNotesRequestLinesTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCreditNotesRequestLinesTaxRates(${toJson()})';
}

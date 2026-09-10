// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledAdditionalDocumentationVariant2 {const CanceledAdditionalDocumentationVariant2._(this.value);

factory CanceledAdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => CanceledAdditionalDocumentationVariant2._(json),
};}

static const CanceledAdditionalDocumentationVariant2 $empty = CanceledAdditionalDocumentationVariant2._('');

static const List<CanceledAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CanceledAdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CanceledAdditionalDocumentationVariant2($value)';}
}

@immutable
final class CanceledAdditionalDocumentation {
  const CanceledAdditionalDocumentation({this.string = const Omittable.absent(),
this.canceledAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CanceledAdditionalDocumentation._({required this.rawValue, required this.string,
required this.canceledAdditionalDocumentationVariant2,});
  factory CanceledAdditionalDocumentation.fromJson(Object? json) => CanceledAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
canceledAdditionalDocumentationVariant2: parseAnyOfVariant<CanceledAdditionalDocumentationVariant2>(json, (value) => CanceledAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CanceledAdditionalDocumentationVariant2> canceledAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || canceledAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (canceledAdditionalDocumentationVariant2.isPresent) canceledAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CanceledAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CanceledAdditionalDocumentation(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribedAdditionalDocumentationVariant2 {const MerchandiseNotAsDescribedAdditionalDocumentationVariant2._(this.value);

factory MerchandiseNotAsDescribedAdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribedAdditionalDocumentationVariant2._(json),
};}

static const MerchandiseNotAsDescribedAdditionalDocumentationVariant2 $empty = MerchandiseNotAsDescribedAdditionalDocumentationVariant2._('');

static const List<MerchandiseNotAsDescribedAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MerchandiseNotAsDescribedAdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MerchandiseNotAsDescribedAdditionalDocumentationVariant2($value)';}
}

@immutable
final class MerchandiseNotAsDescribedAdditionalDocumentation {
  const MerchandiseNotAsDescribedAdditionalDocumentation({this.string = const Omittable.absent(),
this.merchandiseNotAsDescribedAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MerchandiseNotAsDescribedAdditionalDocumentation._({required this.rawValue, required this.string,
required this.merchandiseNotAsDescribedAdditionalDocumentationVariant2,});
  factory MerchandiseNotAsDescribedAdditionalDocumentation.fromJson(Object? json) => MerchandiseNotAsDescribedAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
merchandiseNotAsDescribedAdditionalDocumentationVariant2: parseAnyOfVariant<MerchandiseNotAsDescribedAdditionalDocumentationVariant2>(json, (value) => MerchandiseNotAsDescribedAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<MerchandiseNotAsDescribedAdditionalDocumentationVariant2> merchandiseNotAsDescribedAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || merchandiseNotAsDescribedAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (merchandiseNotAsDescribedAdditionalDocumentationVariant2.isPresent) merchandiseNotAsDescribedAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MerchandiseNotAsDescribedAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MerchandiseNotAsDescribedAdditionalDocumentation(${toJson()})';
}

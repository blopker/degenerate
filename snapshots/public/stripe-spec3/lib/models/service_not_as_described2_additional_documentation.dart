// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribed2AdditionalDocumentationVariant2 {const ServiceNotAsDescribed2AdditionalDocumentationVariant2._(this.value);

factory ServiceNotAsDescribed2AdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribed2AdditionalDocumentationVariant2._(json),
};}

static const ServiceNotAsDescribed2AdditionalDocumentationVariant2 $empty = ServiceNotAsDescribed2AdditionalDocumentationVariant2._('');

static const List<ServiceNotAsDescribed2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is ServiceNotAsDescribed2AdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'ServiceNotAsDescribed2AdditionalDocumentationVariant2($value)';}
}

@immutable
final class ServiceNotAsDescribed2AdditionalDocumentation {
  const ServiceNotAsDescribed2AdditionalDocumentation({this.string = const Omittable.absent(),
this.serviceNotAsDescribed2AdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ServiceNotAsDescribed2AdditionalDocumentation._({required this.rawValue, required this.string,
required this.serviceNotAsDescribed2AdditionalDocumentationVariant2,});
  factory ServiceNotAsDescribed2AdditionalDocumentation.fromJson(Object? json) => ServiceNotAsDescribed2AdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
serviceNotAsDescribed2AdditionalDocumentationVariant2: parseAnyOfVariant<ServiceNotAsDescribed2AdditionalDocumentationVariant2>(json, (value) => ServiceNotAsDescribed2AdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<ServiceNotAsDescribed2AdditionalDocumentationVariant2> serviceNotAsDescribed2AdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || serviceNotAsDescribed2AdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (serviceNotAsDescribed2AdditionalDocumentationVariant2.isPresent) serviceNotAsDescribed2AdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ServiceNotAsDescribed2AdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ServiceNotAsDescribed2AdditionalDocumentation(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribedAdditionalDocumentationVariant2 {const ServiceNotAsDescribedAdditionalDocumentationVariant2._(this.value);

factory ServiceNotAsDescribedAdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribedAdditionalDocumentationVariant2._(json),
};}

static const ServiceNotAsDescribedAdditionalDocumentationVariant2 $empty = ServiceNotAsDescribedAdditionalDocumentationVariant2._('');

static const List<ServiceNotAsDescribedAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is ServiceNotAsDescribedAdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'ServiceNotAsDescribedAdditionalDocumentationVariant2($value)';}
}

@immutable
final class ServiceNotAsDescribedAdditionalDocumentation {
  const ServiceNotAsDescribedAdditionalDocumentation({this.string = const Omittable.absent(),
this.serviceNotAsDescribedAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ServiceNotAsDescribedAdditionalDocumentation._({required this.rawValue, required this.string,
required this.serviceNotAsDescribedAdditionalDocumentationVariant2,});
  factory ServiceNotAsDescribedAdditionalDocumentation.fromJson(Object? json) => ServiceNotAsDescribedAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
serviceNotAsDescribedAdditionalDocumentationVariant2: parseAnyOfVariant<ServiceNotAsDescribedAdditionalDocumentationVariant2>(json, (value) => ServiceNotAsDescribedAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<ServiceNotAsDescribedAdditionalDocumentationVariant2> serviceNotAsDescribedAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || serviceNotAsDescribedAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (serviceNotAsDescribedAdditionalDocumentationVariant2.isPresent) serviceNotAsDescribedAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ServiceNotAsDescribedAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ServiceNotAsDescribedAdditionalDocumentation(${toJson()})';
}

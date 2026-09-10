// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'application.dart';import 'deleted_application.dart';/// ID of the Connect Application that created the quote.
@immutable
final class QuoteApplication {
  const QuoteApplication({this.string = const Omittable.absent(),
this.application = const Omittable.absent(),
this.deletedApplication = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const QuoteApplication._({required this.rawValue, required this.string,
required this.application,
required this.deletedApplication,});
  factory QuoteApplication.fromJson(Object? json) => QuoteApplication._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
application: parseAnyOfVariant<Application>(json, (value) => Application.fromJson(value! as Map<String, dynamic>)),
deletedApplication: parseAnyOfVariant<DeletedApplication>(json, (value) => DeletedApplication.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Application> application;
final Omittable<DeletedApplication> deletedApplication;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || application.isPresent || deletedApplication.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (application.isPresent) application.value?.toJson(),
if (deletedApplication.isPresent) deletedApplication.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is QuoteApplication && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'QuoteApplication(${toJson()})';
}

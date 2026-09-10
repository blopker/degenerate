// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'comparison_filter.dart';import 'compound_filter.dart';
@immutable
final class Filters {
  const Filters({this.comparisonFilter = const Omittable.absent(),
this.compoundFilter = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Filters._({required this.rawValue, required this.comparisonFilter,
required this.compoundFilter,});
  factory Filters.fromJson(Object? json) => Filters._(
    rawValue: Omittable(json),
    comparisonFilter: parseAnyOfVariant<ComparisonFilter>(json, (value) => ComparisonFilter.fromJson(value! as Map<String, dynamic>)),
compoundFilter: parseAnyOfVariant<CompoundFilter>(json, (value) => CompoundFilter.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ComparisonFilter> comparisonFilter;
final Omittable<CompoundFilter> compoundFilter;

  /// Whether at least one known variant matched.
  bool get isValid => comparisonFilter.isPresent || compoundFilter.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (comparisonFilter.isPresent) comparisonFilter.value?.toJson(),
if (compoundFilter.isPresent) compoundFilter.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Filters && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Filters(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_search_request_filters_variant1.dart';import 'autorag_config_search_request_filters_variant2.dart';
@immutable
final class AutoragConfigSearchRequestFilters {
  const AutoragConfigSearchRequestFilters({this.autoragConfigSearchRequestFiltersVariant1 = const Omittable.absent(),
this.autoragConfigSearchRequestFiltersVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AutoragConfigSearchRequestFilters._({required this.rawValue, required this.autoragConfigSearchRequestFiltersVariant1,
required this.autoragConfigSearchRequestFiltersVariant2,});
  factory AutoragConfigSearchRequestFilters.fromJson(Object? json) => AutoragConfigSearchRequestFilters._(
    rawValue: Omittable(json),
    autoragConfigSearchRequestFiltersVariant1: parseAnyOfVariant<AutoragConfigSearchRequestFiltersVariant1>(json, (value) => AutoragConfigSearchRequestFiltersVariant1.fromJson(value! as Map<String, dynamic>)),
autoragConfigSearchRequestFiltersVariant2: parseAnyOfVariant<AutoragConfigSearchRequestFiltersVariant2>(json, (value) => AutoragConfigSearchRequestFiltersVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AutoragConfigSearchRequestFiltersVariant1> autoragConfigSearchRequestFiltersVariant1;
final Omittable<AutoragConfigSearchRequestFiltersVariant2> autoragConfigSearchRequestFiltersVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => autoragConfigSearchRequestFiltersVariant1.isPresent || autoragConfigSearchRequestFiltersVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (autoragConfigSearchRequestFiltersVariant1.isPresent) autoragConfigSearchRequestFiltersVariant1.value?.toJson(),
if (autoragConfigSearchRequestFiltersVariant2.isPresent) autoragConfigSearchRequestFiltersVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AutoragConfigSearchRequestFilters && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AutoragConfigSearchRequestFilters(${toJson()})';
}

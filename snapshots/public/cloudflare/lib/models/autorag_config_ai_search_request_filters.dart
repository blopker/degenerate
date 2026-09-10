// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_ai_search_request_filters_variant1.dart';import 'autorag_config_ai_search_request_filters_variant2.dart';
@immutable
final class AutoragConfigAiSearchRequestFilters {
  const AutoragConfigAiSearchRequestFilters({this.autoragConfigAiSearchRequestFiltersVariant1 = const Omittable.absent(),
this.autoragConfigAiSearchRequestFiltersVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AutoragConfigAiSearchRequestFilters._({required this.rawValue, required this.autoragConfigAiSearchRequestFiltersVariant1,
required this.autoragConfigAiSearchRequestFiltersVariant2,});
  factory AutoragConfigAiSearchRequestFilters.fromJson(Object? json) => AutoragConfigAiSearchRequestFilters._(
    rawValue: Omittable(json),
    autoragConfigAiSearchRequestFiltersVariant1: parseAnyOfVariant<AutoragConfigAiSearchRequestFiltersVariant1>(json, (value) => AutoragConfigAiSearchRequestFiltersVariant1.fromJson(value! as Map<String, dynamic>)),
autoragConfigAiSearchRequestFiltersVariant2: parseAnyOfVariant<AutoragConfigAiSearchRequestFiltersVariant2>(json, (value) => AutoragConfigAiSearchRequestFiltersVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AutoragConfigAiSearchRequestFiltersVariant1> autoragConfigAiSearchRequestFiltersVariant1;
final Omittable<AutoragConfigAiSearchRequestFiltersVariant2> autoragConfigAiSearchRequestFiltersVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => autoragConfigAiSearchRequestFiltersVariant1.isPresent || autoragConfigAiSearchRequestFiltersVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (autoragConfigAiSearchRequestFiltersVariant1.isPresent) autoragConfigAiSearchRequestFiltersVariant1.value?.toJson(),
if (autoragConfigAiSearchRequestFiltersVariant2.isPresent) autoragConfigAiSearchRequestFiltersVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AutoragConfigAiSearchRequestFilters && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AutoragConfigAiSearchRequestFilters(${toJson()})';
}

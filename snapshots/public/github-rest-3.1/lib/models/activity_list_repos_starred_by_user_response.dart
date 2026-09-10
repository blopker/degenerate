// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository.dart';import 'starred_repository.dart';
@immutable
final class ActivityListReposStarredByUserResponse {
  const ActivityListReposStarredByUserResponse({this.listStarredRepository = const Omittable.absent(),
this.listRepository = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ActivityListReposStarredByUserResponse._({required this.rawValue, required this.listStarredRepository,
required this.listRepository,});
  factory ActivityListReposStarredByUserResponse.fromJson(Object? json) => ActivityListReposStarredByUserResponse._(
    rawValue: Omittable(json),
    listStarredRepository: parseAnyOfVariant<List<StarredRepository>>(json, (value) => (value! as List<dynamic>).map((e) => StarredRepository.fromJson(e as Map<String, dynamic>)).toList()),
listRepository: parseAnyOfVariant<List<Repository>>(json, (value) => (value! as List<dynamic>).map((e) => Repository.fromJson(e as Map<String, dynamic>)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<StarredRepository>> listStarredRepository;
final Omittable<List<Repository>> listRepository;

  /// Whether at least one known variant matched.
  bool get isValid => listStarredRepository.isPresent || listRepository.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listStarredRepository.isPresent) listStarredRepository.value?.map((e) => e.toJson()).toList(),
if (listRepository.isPresent) listRepository.value?.map((e) => e.toJson()).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ActivityListReposStarredByUserResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ActivityListReposStarredByUserResponse(${toJson()})';
}

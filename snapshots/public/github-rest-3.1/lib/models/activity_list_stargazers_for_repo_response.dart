// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'simple_user.dart';import 'stargazer.dart';
@immutable
final class ActivityListStargazersForRepoResponse {
  const ActivityListStargazersForRepoResponse({this.listSimpleUser = const Omittable.absent(),
this.listStargazer = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ActivityListStargazersForRepoResponse._({required this.rawValue, required this.listSimpleUser,
required this.listStargazer,});
  factory ActivityListStargazersForRepoResponse.fromJson(Object? json) => ActivityListStargazersForRepoResponse._(
    rawValue: Omittable(json),
    listSimpleUser: parseAnyOfVariant<List<SimpleUser>>(json, (value) => (value! as List<dynamic>).map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList()),
listStargazer: parseAnyOfVariant<List<Stargazer>>(json, (value) => (value! as List<dynamic>).map((e) => Stargazer.fromJson(e as Map<String, dynamic>)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<SimpleUser>> listSimpleUser;
final Omittable<List<Stargazer>> listStargazer;

  /// Whether at least one known variant matched.
  bool get isValid => listSimpleUser.isPresent || listStargazer.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listSimpleUser.isPresent) listSimpleUser.value?.map((e) => e.toJson()).toList(),
if (listStargazer.isPresent) listStargazer.value?.map((e) => e.toJson()).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ActivityListStargazersForRepoResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ActivityListStargazersForRepoResponse(${toJson()})';
}

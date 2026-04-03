// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PauseCollectionParam2Behavior {const PauseCollectionParam2Behavior._(this.value);

factory PauseCollectionParam2Behavior.fromJson(String json) { return switch (json) {
  'keep_as_draft' => keepAsDraft,
  'mark_uncollectible' => markUncollectible,
  'void' => $void,
  _ => PauseCollectionParam2Behavior._(json),
}; }

static const PauseCollectionParam2Behavior keepAsDraft = PauseCollectionParam2Behavior._('keep_as_draft');

static const PauseCollectionParam2Behavior markUncollectible = PauseCollectionParam2Behavior._('mark_uncollectible');

static const PauseCollectionParam2Behavior $void = PauseCollectionParam2Behavior._('void');

static const List<PauseCollectionParam2Behavior> values = [keepAsDraft, markUncollectible, $void];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PauseCollectionParam2Behavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PauseCollectionParam2Behavior($value)'; } 
 }
@immutable final class PauseCollectionParam2 {const PauseCollectionParam2({required this.behavior, this.resumesAt, });

factory PauseCollectionParam2.fromJson(Map<String, dynamic> json) { return PauseCollectionParam2(
  behavior: PauseCollectionParam2Behavior.fromJson(json['behavior'] as String),
  resumesAt: json['resumes_at'] != null ? (json['resumes_at'] as num).toInt() : null,
); }

final PauseCollectionParam2Behavior behavior;

final int? resumesAt;

Map<String, dynamic> toJson() { return {
  'behavior': behavior.toJson(),
  'resumes_at': ?resumesAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('behavior'); } 
PauseCollectionParam2 copyWith({PauseCollectionParam2Behavior? behavior, int Function()? resumesAt, }) { return PauseCollectionParam2(
  behavior: behavior ?? this.behavior,
  resumesAt: resumesAt != null ? resumesAt() : this.resumesAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PauseCollectionParam2 &&
          behavior == other.behavior &&
          resumesAt == other.resumesAt; } 
@override int get hashCode { return Object.hash(behavior, resumesAt); } 
@override String toString() { return 'PauseCollectionParam2(behavior: $behavior, resumesAt: $resumesAt)'; } 
 }

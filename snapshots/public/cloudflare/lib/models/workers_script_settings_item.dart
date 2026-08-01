// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_logpush.dart';import 'workers_observability.dart';import 'workers_tag.dart';import 'workers_tail_consumers_script.dart';@immutable final class WorkersScriptSettingsItem {const WorkersScriptSettingsItem({this.logpush, this.observability = const Omittable.absent(), this.tags = const Omittable.absent(), this.tailConsumers = const Omittable.absent(), });

factory WorkersScriptSettingsItem.fromJson(Map<String, dynamic> json) { return WorkersScriptSettingsItem(
  logpush: json['logpush'] != null ? WorkersLogpush.fromJson(json['logpush'] as bool) : null,
  observability: json.containsKey('observability') ? Omittable(json['observability'] != null ? WorkersObservability.fromJson(json['observability'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  tags: json.containsKey('tags') ? Omittable((json['tags'] as List<dynamic>?)?.map((e) => WorkersTag.fromJson(e as String)).toList()) : const Omittable.absent(),
  tailConsumers: json.containsKey('tail_consumers') ? Omittable((json['tail_consumers'] as List<dynamic>?)?.map((e) => WorkersTailConsumersScript.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
); }

/// Whether Logpush is turned on for the Worker.
final WorkersLogpush? logpush;

final Omittable<WorkersObservability?> observability;

final Omittable<List<WorkersTag>?> tags;

/// List of Workers that will consume logs from the attached Worker.
final Omittable<List<WorkersTailConsumersScript>?> tailConsumers;

Map<String, dynamic> toJson() { return {
  if (logpush != null) 'logpush': logpush?.toJson(),
  if (observability.isPresent) 'observability': observability.value?.toJson(),
  if (tags.isPresent) 'tags': tags.value?.map((e) => e.toJson()).toList(),
  if (tailConsumers.isPresent) 'tail_consumers': tailConsumers.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'logpush', 'observability', 'tags', 'tail_consumers'}.contains(key)); } 
WorkersScriptSettingsItem copyWith({WorkersLogpush? Function()? logpush, Omittable<WorkersObservability?>? observability, Omittable<List<WorkersTag>?>? tags, Omittable<List<WorkersTailConsumersScript>?>? tailConsumers, }) { return WorkersScriptSettingsItem(
  logpush: logpush != null ? logpush() : this.logpush,
  observability: observability ?? this.observability,
  tags: tags ?? this.tags,
  tailConsumers: tailConsumers ?? this.tailConsumers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersScriptSettingsItem &&
          logpush == other.logpush &&
          observability == other.observability &&
          tags.isPresent == other.tags.isPresent &&
          listEquals(tags.value, other.tags.value) &&
          tailConsumers.isPresent == other.tailConsumers.isPresent &&
          listEquals(tailConsumers.value, other.tailConsumers.value); } 
@override int get hashCode { return Object.hash(logpush, observability, Object.hashAll(tags.value ?? const []), Object.hashAll(tailConsumers.value ?? const [])); } 
@override String toString() { return 'WorkersScriptSettingsItem(logpush: $logpush, observability: $observability, tags: $tags, tailConsumers: $tailConsumers)'; } 
 }

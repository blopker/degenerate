// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'time.dart';/// ContainerStateRunning is a running state of a container.
@immutable final class ContainerStateRunning {const ContainerStateRunning({this.startedAt});

factory ContainerStateRunning.fromJson(Map<String, dynamic> json) { return ContainerStateRunning(
  startedAt: json['startedAt'] != null ? Time.fromJson(json['startedAt'] as String) : null,
); }

/// Time at which the container was last (re-)started
final Time? startedAt;

Map<String, dynamic> toJson() { return {
  if (startedAt != null) 'startedAt': startedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'startedAt'}.contains(key)); } 
ContainerStateRunning copyWith({Time Function()? startedAt}) { return ContainerStateRunning(
  startedAt: startedAt != null ? startedAt() : this.startedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerStateRunning &&
          startedAt == other.startedAt; } 
@override int get hashCode { return startedAt.hashCode; } 
@override String toString() { return 'ContainerStateRunning(startedAt: $startedAt)'; } 
 }

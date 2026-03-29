// GENERATED CODE - DO NOT MODIFY BY HAND

import 'container_state_running.dart';import 'container_state_terminated.dart';import 'container_state_waiting.dart';/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
final class ContainerState {const ContainerState({this.running, this.terminated, this.waiting, });

factory ContainerState.fromJson(Map<String, dynamic> json) { return ContainerState(
  running: json['running'] != null ? ContainerStateRunning.fromJson(json['running'] as Map<String, dynamic>) : null,
  terminated: json['terminated'] != null ? ContainerStateTerminated.fromJson(json['terminated'] as Map<String, dynamic>) : null,
  waiting: json['waiting'] != null ? ContainerStateWaiting.fromJson(json['waiting'] as Map<String, dynamic>) : null,
); }

/// Details about a running container
final ContainerStateRunning? running;

/// Details about a terminated container
final ContainerStateTerminated? terminated;

/// Details about a waiting container
final ContainerStateWaiting? waiting;

Map<String, dynamic> toJson() { return {
  if (running != null) 'running': running?.toJson(),
  if (terminated != null) 'terminated': terminated?.toJson(),
  if (waiting != null) 'waiting': waiting?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'running', 'terminated', 'waiting'}.contains(key)); } 
ContainerState copyWith({ContainerStateRunning Function()? running, ContainerStateTerminated Function()? terminated, ContainerStateWaiting Function()? waiting, }) { return ContainerState(
  running: running != null ? running() : this.running,
  terminated: terminated != null ? terminated() : this.terminated,
  waiting: waiting != null ? waiting() : this.waiting,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerState &&
          running == other.running &&
          terminated == other.terminated &&
          waiting == other.waiting; } 
@override int get hashCode { return Object.hash(running, terminated, waiting); } 
@override String toString() { return 'ContainerState(running: $running, terminated: $terminated, waiting: $waiting)'; } 
 }

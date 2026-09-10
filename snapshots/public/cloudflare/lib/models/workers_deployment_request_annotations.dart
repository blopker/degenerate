// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersDeploymentRequestAnnotations {const WorkersDeploymentRequestAnnotations({this.workersMessage});

factory WorkersDeploymentRequestAnnotations.fromJson(Map<String, dynamic> json) {return WorkersDeploymentRequestAnnotations(
  workersMessage: json['workers/message'] as String?,
);}

/// Human-readable message about the deployment. Truncated to 100 bytes.
final String? workersMessage;

Map<String, dynamic> toJson() {return {
  'workers/message': ?workersMessage,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'workers/message'}.contains(key));}
WorkersDeploymentRequestAnnotations copyWith({String? Function()? workersMessage}) {return WorkersDeploymentRequestAnnotations(
  workersMessage: workersMessage != null ? workersMessage() : this.workersMessage,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersDeploymentRequestAnnotations &&
          workersMessage == other.workersMessage;}
@override int get hashCode {return workersMessage.hashCode;}
@override String toString() {return 'WorkersDeploymentRequestAnnotations(workersMessage: $workersMessage)';}
}

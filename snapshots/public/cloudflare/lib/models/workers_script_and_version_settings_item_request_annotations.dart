// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Annotations for the Worker version. Annotations are not inherited across settings updates; omitting this field means the new version will have no annotations.
@immutable final class WorkersScriptAndVersionSettingsItemRequestAnnotations {const WorkersScriptAndVersionSettingsItemRequestAnnotations({this.workersMessage, this.workersTag, });

factory WorkersScriptAndVersionSettingsItemRequestAnnotations.fromJson(Map<String, dynamic> json) {return WorkersScriptAndVersionSettingsItemRequestAnnotations(
  workersMessage: json['workers/message'] as String?,
  workersTag: json['workers/tag'] as String?,
);}

/// Human-readable message about the version.
final String? workersMessage;

/// User-provided identifier for the version.
final String? workersTag;

Map<String, dynamic> toJson() {return {
  'workers/message': ?workersMessage,
  'workers/tag': ?workersTag,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'workers/message', 'workers/tag'}.contains(key));}
WorkersScriptAndVersionSettingsItemRequestAnnotations copyWith({String? Function()? workersMessage, String? Function()? workersTag, }) {return WorkersScriptAndVersionSettingsItemRequestAnnotations(
  workersMessage: workersMessage != null ? workersMessage() : this.workersMessage,
  workersTag: workersTag != null ? workersTag() : this.workersTag,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersScriptAndVersionSettingsItemRequestAnnotations &&
          workersMessage == other.workersMessage &&
          workersTag == other.workersTag;}
@override int get hashCode {return Object.hash(workersMessage, workersTag);}
@override String toString() {return 'WorkersScriptAndVersionSettingsItemRequestAnnotations(workersMessage: $workersMessage, workersTag: $workersTag)';}
}

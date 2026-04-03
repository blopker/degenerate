// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// NodeRuntimeHandlerFeatures is a set of features implemented by the runtime handler.
@immutable final class NodeRuntimeHandlerFeatures {const NodeRuntimeHandlerFeatures({this.recursiveReadOnlyMounts, this.userNamespaces, });

factory NodeRuntimeHandlerFeatures.fromJson(Map<String, dynamic> json) { return NodeRuntimeHandlerFeatures(
  recursiveReadOnlyMounts: json['recursiveReadOnlyMounts'] as bool?,
  userNamespaces: json['userNamespaces'] as bool?,
); }

/// RecursiveReadOnlyMounts is set to true if the runtime handler supports RecursiveReadOnlyMounts.
final bool? recursiveReadOnlyMounts;

/// UserNamespaces is set to true if the runtime handler supports UserNamespaces, including for volumes.
final bool? userNamespaces;

Map<String, dynamic> toJson() { return {
  'recursiveReadOnlyMounts': ?recursiveReadOnlyMounts,
  'userNamespaces': ?userNamespaces,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'recursiveReadOnlyMounts', 'userNamespaces'}.contains(key)); } 
NodeRuntimeHandlerFeatures copyWith({bool Function()? recursiveReadOnlyMounts, bool Function()? userNamespaces, }) { return NodeRuntimeHandlerFeatures(
  recursiveReadOnlyMounts: recursiveReadOnlyMounts != null ? recursiveReadOnlyMounts() : this.recursiveReadOnlyMounts,
  userNamespaces: userNamespaces != null ? userNamespaces() : this.userNamespaces,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NodeRuntimeHandlerFeatures &&
          recursiveReadOnlyMounts == other.recursiveReadOnlyMounts &&
          userNamespaces == other.userNamespaces; } 
@override int get hashCode { return Object.hash(recursiveReadOnlyMounts, userNamespaces); } 
@override String toString() { return 'NodeRuntimeHandlerFeatures(recursiveReadOnlyMounts: $recursiveReadOnlyMounts, userNamespaces: $userNamespaces)'; } 
 }

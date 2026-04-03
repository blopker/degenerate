// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Commit an autofix for a code scanning alert
@immutable final class CodeScanningAutofixCommits {const CodeScanningAutofixCommits({this.targetRef, this.message, });

factory CodeScanningAutofixCommits.fromJson(Map<String, dynamic> json) { return CodeScanningAutofixCommits(
  targetRef: json['target_ref'] as String?,
  message: json['message'] as String?,
); }

/// The Git reference of target branch for the commit. Branch needs to already exist.  For more information, see "[Git References](https://git-scm.com/book/en/v2/Git-Internals-Git-References)" in the Git documentation.
final String? targetRef;

/// Commit message to be used.
final String? message;

Map<String, dynamic> toJson() { return {
  'target_ref': ?targetRef,
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'target_ref', 'message'}.contains(key)); } 
CodeScanningAutofixCommits copyWith({String Function()? targetRef, String Function()? message, }) { return CodeScanningAutofixCommits(
  targetRef: targetRef != null ? targetRef() : this.targetRef,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAutofixCommits &&
          targetRef == other.targetRef &&
          message == other.message; } 
@override int get hashCode { return Object.hash(targetRef, message); } 
@override String toString() { return 'CodeScanningAutofixCommits(targetRef: $targetRef, message: $message)'; } 
 }

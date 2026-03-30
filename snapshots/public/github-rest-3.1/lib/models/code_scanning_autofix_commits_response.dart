// GENERATED CODE - DO NOT MODIFY BY HAND

final class CodeScanningAutofixCommitsResponse {const CodeScanningAutofixCommitsResponse({this.targetRef, this.sha, });

factory CodeScanningAutofixCommitsResponse.fromJson(Map<String, dynamic> json) { return CodeScanningAutofixCommitsResponse(
  targetRef: json['target_ref'] as String?,
  sha: json['sha'] as String?,
); }

/// The Git reference of target branch for the commit. For more information, see "[Git References](https://git-scm.com/book/en/v2/Git-Internals-Git-References)" in the Git documentation.
final String? targetRef;

/// SHA of commit with autofix.
final String? sha;

Map<String, dynamic> toJson() { return {
  'target_ref': ?targetRef,
  'sha': ?sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'target_ref', 'sha'}.contains(key)); } 
CodeScanningAutofixCommitsResponse copyWith({String Function()? targetRef, String Function()? sha, }) { return CodeScanningAutofixCommitsResponse(
  targetRef: targetRef != null ? targetRef() : this.targetRef,
  sha: sha != null ? sha() : this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAutofixCommitsResponse &&
          targetRef == other.targetRef &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(targetRef, sha); } 
@override String toString() { return 'CodeScanningAutofixCommitsResponse(targetRef: $targetRef, sha: $sha)'; } 
 }

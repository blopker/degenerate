// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_alert_classification.dart';import 'code_scanning_alert_environment.dart';import 'code_scanning_alert_instance_message.dart';import 'code_scanning_alert_location.dart';import 'code_scanning_alert_state.dart';import 'code_scanning_analysis_analysis_key.dart';import 'code_scanning_analysis_category.dart';import 'code_scanning_ref.dart';final class CodeScanningAlertInstance {const CodeScanningAlertInstance({this.ref, this.analysisKey, this.environment, this.category, this.state, this.commitSha, this.message, this.location, this.htmlUrl, this.classifications, });

factory CodeScanningAlertInstance.fromJson(Map<String, dynamic> json) { return CodeScanningAlertInstance(
  ref: json['ref'] != null ? CodeScanningRef.fromJson(json['ref'] as String) : null,
  analysisKey: json['analysis_key'] != null ? CodeScanningAnalysisAnalysisKey.fromJson(json['analysis_key'] as String) : null,
  environment: json['environment'] != null ? CodeScanningAlertEnvironment.fromJson(json['environment'] as String) : null,
  category: json['category'] != null ? CodeScanningAnalysisCategory.fromJson(json['category'] as String) : null,
  state: json['state'] != null ? CodeScanningAlertState.fromJson(json['state'] as String) : null,
  commitSha: json['commit_sha'] as String?,
  message: json['message'] != null ? CodeScanningAlertInstanceMessage.fromJson(json['message'] as Map<String, dynamic>) : null,
  location: json['location'] != null ? CodeScanningAlertLocation.fromJson(json['location'] as Map<String, dynamic>) : null,
  htmlUrl: json['html_url'] as String?,
  classifications: (json['classifications'] as List<dynamic>?)?.map((e) => CodeScanningAlertClassification.fromJson(e as String)).toList(),
); }

/// The Git reference, formatted as `refs/pull/<number>/merge`, `refs/pull/<number>/head`,
/// `refs/heads/<branch name>` or simply `<branch name>`.
final CodeScanningRef? ref;

/// Identifies the configuration under which the analysis was executed. For example, in GitHub Actions this includes the workflow filename and job name.
final CodeScanningAnalysisAnalysisKey? analysisKey;

/// Identifies the variable values associated with the environment in which the analysis that generated this alert instance was performed, such as the language that was analyzed.
final CodeScanningAlertEnvironment? environment;

/// Identifies the configuration under which the analysis was executed. Used to distinguish between multiple analyses for the same tool and commit, but performed on different languages or different parts of the code.
final CodeScanningAnalysisCategory? category;

/// State of a code scanning alert.
final CodeScanningAlertState? state;

final String? commitSha;

final CodeScanningAlertInstanceMessage? message;

final CodeScanningAlertLocation? location;

final String? htmlUrl;

/// Classifications that have been applied to the file that triggered the alert.
/// For example identifying it as documentation, or a generated file.
final List<CodeScanningAlertClassification?>? classifications;

Map<String, dynamic> toJson() { return {
  if (ref != null) 'ref': ref?.toJson(),
  if (analysisKey != null) 'analysis_key': analysisKey?.toJson(),
  if (environment != null) 'environment': environment?.toJson(),
  if (category != null) 'category': category?.toJson(),
  if (state != null) 'state': state?.toJson(),
  'commit_sha': ?commitSha,
  if (message != null) 'message': message?.toJson(),
  if (location != null) 'location': location?.toJson(),
  'html_url': ?htmlUrl,
  if (classifications != null) 'classifications': classifications?.map((e) => e?.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CodeScanningAlertInstance copyWith({CodeScanningRef Function()? ref, CodeScanningAnalysisAnalysisKey Function()? analysisKey, CodeScanningAlertEnvironment Function()? environment, CodeScanningAnalysisCategory Function()? category, CodeScanningAlertState? Function()? state, String Function()? commitSha, CodeScanningAlertInstanceMessage Function()? message, CodeScanningAlertLocation Function()? location, String Function()? htmlUrl, List<CodeScanningAlertClassification> Function()? classifications, }) { return CodeScanningAlertInstance(
  ref: ref != null ? ref() : this.ref,
  analysisKey: analysisKey != null ? analysisKey() : this.analysisKey,
  environment: environment != null ? environment() : this.environment,
  category: category != null ? category() : this.category,
  state: state != null ? state() : this.state,
  commitSha: commitSha != null ? commitSha() : this.commitSha,
  message: message != null ? message() : this.message,
  location: location != null ? location() : this.location,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  classifications: classifications != null ? classifications() : this.classifications,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAlertInstance &&
          ref == other.ref &&
          analysisKey == other.analysisKey &&
          environment == other.environment &&
          category == other.category &&
          state == other.state &&
          commitSha == other.commitSha &&
          message == other.message &&
          location == other.location &&
          htmlUrl == other.htmlUrl &&
          listEquals(classifications, other.classifications); } 
@override int get hashCode { return Object.hash(ref, analysisKey, environment, category, state, commitSha, message, location, htmlUrl, Object.hashAll(classifications ?? const [])); } 
@override String toString() { return 'CodeScanningAlertInstance(ref: $ref, analysisKey: $analysisKey, environment: $environment, category: $category, state: $state, commitSha: $commitSha, message: $message, location: $location, htmlUrl: $htmlUrl, classifications: $classifications)'; } 
 }

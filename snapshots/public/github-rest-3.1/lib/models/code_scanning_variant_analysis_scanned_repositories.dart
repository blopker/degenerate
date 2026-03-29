// GENERATED CODE - DO NOT MODIFY BY HAND

import 'code_scanning_variant_analysis_repository.dart';import 'code_scanning_variant_analysis_status.dart';final class CodeScanningVariantAnalysisScannedRepositories {const CodeScanningVariantAnalysisScannedRepositories({required this.repository, required this.analysisStatus, this.resultCount, this.artifactSizeInBytes, this.failureMessage, });

factory CodeScanningVariantAnalysisScannedRepositories.fromJson(Map<String, dynamic> json) { return CodeScanningVariantAnalysisScannedRepositories(
  repository: CodeScanningVariantAnalysisRepository.fromJson(json['repository'] as Map<String, dynamic>),
  analysisStatus: CodeScanningVariantAnalysisStatus.fromJson(json['analysis_status'] as String),
  resultCount: json['result_count'] != null ? (json['result_count'] as num).toInt() : null,
  artifactSizeInBytes: json['artifact_size_in_bytes'] != null ? (json['artifact_size_in_bytes'] as num).toInt() : null,
  failureMessage: json['failure_message'] as String?,
); }

final CodeScanningVariantAnalysisRepository repository;

final CodeScanningVariantAnalysisStatus analysisStatus;

/// The number of results in the case of a successful analysis. This is only available for successful analyses.
final int? resultCount;

/// The size of the artifact. This is only available for successful analyses.
final int? artifactSizeInBytes;

/// The reason of the failure of this repo task. This is only available if the repository task has failed.
final String? failureMessage;

Map<String, dynamic> toJson() { return {
  'repository': repository.toJson(),
  'analysis_status': analysisStatus.toJson(),
  'result_count': ?resultCount,
  'artifact_size_in_bytes': ?artifactSizeInBytes,
  'failure_message': ?failureMessage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('repository') &&
      json.containsKey('analysis_status'); } 
CodeScanningVariantAnalysisScannedRepositories copyWith({CodeScanningVariantAnalysisRepository? repository, CodeScanningVariantAnalysisStatus? analysisStatus, int Function()? resultCount, int Function()? artifactSizeInBytes, String Function()? failureMessage, }) { return CodeScanningVariantAnalysisScannedRepositories(
  repository: repository ?? this.repository,
  analysisStatus: analysisStatus ?? this.analysisStatus,
  resultCount: resultCount != null ? resultCount() : this.resultCount,
  artifactSizeInBytes: artifactSizeInBytes != null ? artifactSizeInBytes() : this.artifactSizeInBytes,
  failureMessage: failureMessage != null ? failureMessage() : this.failureMessage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningVariantAnalysisScannedRepositories &&
          repository == other.repository &&
          analysisStatus == other.analysisStatus &&
          resultCount == other.resultCount &&
          artifactSizeInBytes == other.artifactSizeInBytes &&
          failureMessage == other.failureMessage; } 
@override int get hashCode { return Object.hash(repository, analysisStatus, resultCount, artifactSizeInBytes, failureMessage); } 
@override String toString() { return 'CodeScanningVariantAnalysisScannedRepositories(repository: $repository, analysisStatus: $analysisStatus, resultCount: $resultCount, artifactSizeInBytes: $artifactSizeInBytes, failureMessage: $failureMessage)'; } 
 }

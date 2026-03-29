// GENERATED CODE - DO NOT MODIFY BY HAND

final class R2SlurperJobLogResponseLogType {const R2SlurperJobLogResponseLogType._(this.value);

factory R2SlurperJobLogResponseLogType.fromJson(String json) { return switch (json) {
  'migrationStart' => migrationStart,
  'migrationComplete' => migrationComplete,
  'migrationAbort' => migrationAbort,
  'migrationError' => migrationError,
  'migrationPause' => migrationPause,
  'migrationResume' => migrationResume,
  'migrationErrorFailedContinuation' => migrationErrorFailedContinuation,
  'importErrorRetryExhaustion' => importErrorRetryExhaustion,
  'importSkippedStorageClass' => importSkippedStorageClass,
  'importSkippedOversized' => importSkippedOversized,
  'importSkippedEmptyObject' => importSkippedEmptyObject,
  'importSkippedUnsupportedContentType' => importSkippedUnsupportedContentType,
  'importSkippedExcludedContentType' => importSkippedExcludedContentType,
  'importSkippedInvalidMedia' => importSkippedInvalidMedia,
  'importSkippedRequiresRetrieval' => importSkippedRequiresRetrieval,
  _ => R2SlurperJobLogResponseLogType._(json),
}; }

static const R2SlurperJobLogResponseLogType migrationStart = R2SlurperJobLogResponseLogType._('migrationStart');

static const R2SlurperJobLogResponseLogType migrationComplete = R2SlurperJobLogResponseLogType._('migrationComplete');

static const R2SlurperJobLogResponseLogType migrationAbort = R2SlurperJobLogResponseLogType._('migrationAbort');

static const R2SlurperJobLogResponseLogType migrationError = R2SlurperJobLogResponseLogType._('migrationError');

static const R2SlurperJobLogResponseLogType migrationPause = R2SlurperJobLogResponseLogType._('migrationPause');

static const R2SlurperJobLogResponseLogType migrationResume = R2SlurperJobLogResponseLogType._('migrationResume');

static const R2SlurperJobLogResponseLogType migrationErrorFailedContinuation = R2SlurperJobLogResponseLogType._('migrationErrorFailedContinuation');

static const R2SlurperJobLogResponseLogType importErrorRetryExhaustion = R2SlurperJobLogResponseLogType._('importErrorRetryExhaustion');

static const R2SlurperJobLogResponseLogType importSkippedStorageClass = R2SlurperJobLogResponseLogType._('importSkippedStorageClass');

static const R2SlurperJobLogResponseLogType importSkippedOversized = R2SlurperJobLogResponseLogType._('importSkippedOversized');

static const R2SlurperJobLogResponseLogType importSkippedEmptyObject = R2SlurperJobLogResponseLogType._('importSkippedEmptyObject');

static const R2SlurperJobLogResponseLogType importSkippedUnsupportedContentType = R2SlurperJobLogResponseLogType._('importSkippedUnsupportedContentType');

static const R2SlurperJobLogResponseLogType importSkippedExcludedContentType = R2SlurperJobLogResponseLogType._('importSkippedExcludedContentType');

static const R2SlurperJobLogResponseLogType importSkippedInvalidMedia = R2SlurperJobLogResponseLogType._('importSkippedInvalidMedia');

static const R2SlurperJobLogResponseLogType importSkippedRequiresRetrieval = R2SlurperJobLogResponseLogType._('importSkippedRequiresRetrieval');

static const List<R2SlurperJobLogResponseLogType> values = [migrationStart, migrationComplete, migrationAbort, migrationError, migrationPause, migrationResume, migrationErrorFailedContinuation, importErrorRetryExhaustion, importSkippedStorageClass, importSkippedOversized, importSkippedEmptyObject, importSkippedUnsupportedContentType, importSkippedExcludedContentType, importSkippedInvalidMedia, importSkippedRequiresRetrieval];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2SlurperJobLogResponseLogType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2SlurperJobLogResponseLogType($value)'; } 
 }
final class R2SlurperJobLogResponse {const R2SlurperJobLogResponse({this.createdAt, this.job, this.logType, this.message, this.objectKey, });

factory R2SlurperJobLogResponse.fromJson(Map<String, dynamic> json) { return R2SlurperJobLogResponse(
  createdAt: json['createdAt'] as String?,
  job: json['job'] as String?,
  logType: json['logType'] != null ? R2SlurperJobLogResponseLogType.fromJson(json['logType'] as String) : null,
  message: json['message'] as String?,
  objectKey: json['objectKey'] as String?,
); }

final String? createdAt;

final String? job;

final R2SlurperJobLogResponseLogType? logType;

final String? message;

final String? objectKey;

Map<String, dynamic> toJson() { return {
  'createdAt': ?createdAt,
  'job': ?job,
  if (logType != null) 'logType': logType?.toJson(),
  'message': ?message,
  'objectKey': ?objectKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
R2SlurperJobLogResponse copyWith({String Function()? createdAt, String Function()? job, R2SlurperJobLogResponseLogType Function()? logType, String? Function()? message, String? Function()? objectKey, }) { return R2SlurperJobLogResponse(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  job: job != null ? job() : this.job,
  logType: logType != null ? logType() : this.logType,
  message: message != null ? message() : this.message,
  objectKey: objectKey != null ? objectKey() : this.objectKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SlurperJobLogResponse &&
          createdAt == other.createdAt &&
          job == other.job &&
          logType == other.logType &&
          message == other.message &&
          objectKey == other.objectKey; } 
@override int get hashCode { return Object.hash(createdAt, job, logType, message, objectKey); } 
@override String toString() { return 'R2SlurperJobLogResponse(createdAt: $createdAt, job: $job, logType: $logType, message: $message, objectKey: $objectKey)'; } 
 }

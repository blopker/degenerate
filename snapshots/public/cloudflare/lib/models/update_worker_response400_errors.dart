// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_missing_param.dart';import 'workers_error_worker_invalid.dart';import 'workers_error_worker_name_invalid.dart';import 'workers_error_worker_name_preview_length_limit.dart';import 'workers_error_worker_name_subdomain_length_limit.dart';import 'workers_error_worker_observability_sampling_rate_invalid.dart';import 'workers_error_worker_tag_invalid.dart';import 'workers_error_worker_tag_length_limit.dart';sealed class UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory UpdateWorkerResponse400Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
  'workers_ErrorMissingParam' => UpdateWorkerResponse400ErrorsWorkersErrorMissingParam.fromJson(json),
  'workers_ErrorWorkerNameInvalid' => UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid.fromJson(json),
  'workers_ErrorWorkerInvalid' => UpdateWorkerResponse400ErrorsWorkersErrorWorkerInvalid.fromJson(json),
  'workers_ErrorWorkerTagLengthLimit' => UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit.fromJson(json),
  'workers_ErrorWorkerTagInvalid' => UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid.fromJson(json),
  'workers_ErrorWorkerNameSubdomainLengthLimit' => UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json),
  'workers_ErrorWorkerNamePreviewLengthLimit' => UpdateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit.fromJson(json),
  'workers_ErrorWorkerObservabilitySamplingRateInvalid' => UpdateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json),
  '10003' => UpdateWorkerResponse400Errors10003.fromJson(json),
  '10016' => UpdateWorkerResponse400Errors10016.fromJson(json),
  '10021' => UpdateWorkerResponse400Errors10021.fromJson(json),
  '100102' => UpdateWorkerResponse400Errors100102.fromJson(json),
  '100132' => UpdateWorkerResponse400Errors100132.fromJson(json),
  '100134' => UpdateWorkerResponse400Errors100134.fromJson(json),
  '100308' => UpdateWorkerResponse400Errors100308.fromJson(json),
  '100315' => UpdateWorkerResponse400Errors100315.fromJson(json),
  _ => UpdateWorkerResponse400Errors$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get code;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is UpdateWorkerResponse400Errors$Unknown; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorMissingParam extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorMissingParam(this.workersErrorMissingParam);

factory UpdateWorkerResponse400ErrorsWorkersErrorMissingParam.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorMissingParam(WorkersErrorMissingParam.fromJson(json)); }

final WorkersErrorMissingParam workersErrorMissingParam;

@override String get code { return 'workers_ErrorMissingParam'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorMissingParam.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorMissingParam && workersErrorMissingParam == other.workersErrorMissingParam; } 
@override int get hashCode { return workersErrorMissingParam.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorMissingParam(workersErrorMissingParam: $workersErrorMissingParam)'; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(this.workersErrorWorkerNameInvalid);

factory UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(WorkersErrorWorkerNameInvalid.fromJson(json)); }

final WorkersErrorWorkerNameInvalid workersErrorWorkerNameInvalid;

@override String get code { return 'workers_ErrorWorkerNameInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid && workersErrorWorkerNameInvalid == other.workersErrorWorkerNameInvalid; } 
@override int get hashCode { return workersErrorWorkerNameInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(workersErrorWorkerNameInvalid: $workersErrorWorkerNameInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorWorkerInvalid extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorWorkerInvalid(this.workersErrorWorkerInvalid);

factory UpdateWorkerResponse400ErrorsWorkersErrorWorkerInvalid.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorWorkerInvalid(WorkersErrorWorkerInvalid.fromJson(json)); }

final WorkersErrorWorkerInvalid workersErrorWorkerInvalid;

@override String get code { return 'workers_ErrorWorkerInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorWorkerInvalid && workersErrorWorkerInvalid == other.workersErrorWorkerInvalid; } 
@override int get hashCode { return workersErrorWorkerInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorWorkerInvalid(workersErrorWorkerInvalid: $workersErrorWorkerInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(this.workersErrorWorkerTagLengthLimit);

factory UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(WorkersErrorWorkerTagLengthLimit.fromJson(json)); }

final WorkersErrorWorkerTagLengthLimit workersErrorWorkerTagLengthLimit;

@override String get code { return 'workers_ErrorWorkerTagLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit && workersErrorWorkerTagLengthLimit == other.workersErrorWorkerTagLengthLimit; } 
@override int get hashCode { return workersErrorWorkerTagLengthLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(workersErrorWorkerTagLengthLimit: $workersErrorWorkerTagLengthLimit)'; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(this.workersErrorWorkerTagInvalid);

factory UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(WorkersErrorWorkerTagInvalid.fromJson(json)); }

final WorkersErrorWorkerTagInvalid workersErrorWorkerTagInvalid;

@override String get code { return 'workers_ErrorWorkerTagInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid && workersErrorWorkerTagInvalid == other.workersErrorWorkerTagInvalid; } 
@override int get hashCode { return workersErrorWorkerTagInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(workersErrorWorkerTagInvalid: $workersErrorWorkerTagInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(this.workersErrorWorkerNameSubdomainLengthLimit);

factory UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(WorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNameSubdomainLengthLimit workersErrorWorkerNameSubdomainLengthLimit;

@override String get code { return 'workers_ErrorWorkerNameSubdomainLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameSubdomainLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit && workersErrorWorkerNameSubdomainLengthLimit == other.workersErrorWorkerNameSubdomainLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNameSubdomainLengthLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(workersErrorWorkerNameSubdomainLengthLimit: $workersErrorWorkerNameSubdomainLengthLimit)'; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(this.workersErrorWorkerNamePreviewLengthLimit);

factory UpdateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(WorkersErrorWorkerNamePreviewLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNamePreviewLengthLimit workersErrorWorkerNamePreviewLengthLimit;

@override String get code { return 'workers_ErrorWorkerNamePreviewLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNamePreviewLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit && workersErrorWorkerNamePreviewLengthLimit == other.workersErrorWorkerNamePreviewLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNamePreviewLengthLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(workersErrorWorkerNamePreviewLengthLimit: $workersErrorWorkerNamePreviewLengthLimit)'; } 
 }
@immutable final class UpdateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(this.workersErrorWorkerObservabilitySamplingRateInvalid);

factory UpdateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json)); }

final WorkersErrorWorkerObservabilitySamplingRateInvalid workersErrorWorkerObservabilitySamplingRateInvalid;

@override String get code { return 'workers_ErrorWorkerObservabilitySamplingRateInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerObservabilitySamplingRateInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid && workersErrorWorkerObservabilitySamplingRateInvalid == other.workersErrorWorkerObservabilitySamplingRateInvalid; } 
@override int get hashCode { return workersErrorWorkerObservabilitySamplingRateInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(workersErrorWorkerObservabilitySamplingRateInvalid: $workersErrorWorkerObservabilitySamplingRateInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors10003 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors10003(this.workersErrorMissingParam);

factory UpdateWorkerResponse400Errors10003.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors10003(WorkersErrorMissingParam.fromJson(json)); }

final WorkersErrorMissingParam workersErrorMissingParam;

@override String get code { return '10003'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorMissingParam.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors10003 && workersErrorMissingParam == other.workersErrorMissingParam; } 
@override int get hashCode { return workersErrorMissingParam.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors10003(workersErrorMissingParam: $workersErrorMissingParam)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors10016 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors10016(this.workersErrorWorkerNameInvalid);

factory UpdateWorkerResponse400Errors10016.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors10016(WorkersErrorWorkerNameInvalid.fromJson(json)); }

final WorkersErrorWorkerNameInvalid workersErrorWorkerNameInvalid;

@override String get code { return '10016'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors10016 && workersErrorWorkerNameInvalid == other.workersErrorWorkerNameInvalid; } 
@override int get hashCode { return workersErrorWorkerNameInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors10016(workersErrorWorkerNameInvalid: $workersErrorWorkerNameInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors10021 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors10021(this.workersErrorWorkerInvalid);

factory UpdateWorkerResponse400Errors10021.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors10021(WorkersErrorWorkerInvalid.fromJson(json)); }

final WorkersErrorWorkerInvalid workersErrorWorkerInvalid;

@override String get code { return '10021'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors10021 && workersErrorWorkerInvalid == other.workersErrorWorkerInvalid; } 
@override int get hashCode { return workersErrorWorkerInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors10021(workersErrorWorkerInvalid: $workersErrorWorkerInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors100102 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors100102(this.workersErrorWorkerTagLengthLimit);

factory UpdateWorkerResponse400Errors100102.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors100102(WorkersErrorWorkerTagLengthLimit.fromJson(json)); }

final WorkersErrorWorkerTagLengthLimit workersErrorWorkerTagLengthLimit;

@override String get code { return '100102'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors100102 && workersErrorWorkerTagLengthLimit == other.workersErrorWorkerTagLengthLimit; } 
@override int get hashCode { return workersErrorWorkerTagLengthLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors100102(workersErrorWorkerTagLengthLimit: $workersErrorWorkerTagLengthLimit)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors100132 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors100132(this.workersErrorWorkerNameSubdomainLengthLimit);

factory UpdateWorkerResponse400Errors100132.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors100132(WorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNameSubdomainLengthLimit workersErrorWorkerNameSubdomainLengthLimit;

@override String get code { return '100132'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameSubdomainLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors100132 && workersErrorWorkerNameSubdomainLengthLimit == other.workersErrorWorkerNameSubdomainLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNameSubdomainLengthLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors100132(workersErrorWorkerNameSubdomainLengthLimit: $workersErrorWorkerNameSubdomainLengthLimit)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors100134 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors100134(this.workersErrorWorkerTagInvalid);

factory UpdateWorkerResponse400Errors100134.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors100134(WorkersErrorWorkerTagInvalid.fromJson(json)); }

final WorkersErrorWorkerTagInvalid workersErrorWorkerTagInvalid;

@override String get code { return '100134'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors100134 && workersErrorWorkerTagInvalid == other.workersErrorWorkerTagInvalid; } 
@override int get hashCode { return workersErrorWorkerTagInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors100134(workersErrorWorkerTagInvalid: $workersErrorWorkerTagInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors100308 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors100308(this.workersErrorWorkerObservabilitySamplingRateInvalid);

factory UpdateWorkerResponse400Errors100308.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors100308(WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json)); }

final WorkersErrorWorkerObservabilitySamplingRateInvalid workersErrorWorkerObservabilitySamplingRateInvalid;

@override String get code { return '100308'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerObservabilitySamplingRateInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors100308 && workersErrorWorkerObservabilitySamplingRateInvalid == other.workersErrorWorkerObservabilitySamplingRateInvalid; } 
@override int get hashCode { return workersErrorWorkerObservabilitySamplingRateInvalid.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors100308(workersErrorWorkerObservabilitySamplingRateInvalid: $workersErrorWorkerObservabilitySamplingRateInvalid)'; } 
 }
@immutable final class UpdateWorkerResponse400Errors100315 extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors100315(this.workersErrorWorkerNamePreviewLengthLimit);

factory UpdateWorkerResponse400Errors100315.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse400Errors100315(WorkersErrorWorkerNamePreviewLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNamePreviewLengthLimit workersErrorWorkerNamePreviewLengthLimit;

@override String get code { return '100315'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNamePreviewLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors100315 && workersErrorWorkerNamePreviewLengthLimit == other.workersErrorWorkerNamePreviewLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNamePreviewLengthLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors100315(workersErrorWorkerNamePreviewLengthLimit: $workersErrorWorkerNamePreviewLengthLimit)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class UpdateWorkerResponse400Errors$Unknown extends UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors$Unknown(this.json);

final Map<String, dynamic> json;

@override String get code { return json['code'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse400Errors$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse400Errors.unknown($json)'; } 
 }

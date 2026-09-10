// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_missing_param.dart';import 'workers_error_worker_invalid.dart';import 'workers_error_worker_name_invalid.dart';import 'workers_error_worker_name_preview_length_limit.dart';import 'workers_error_worker_name_subdomain_length_limit.dart';import 'workers_error_worker_observability_sampling_rate_invalid.dart';import 'workers_error_worker_tag_invalid.dart';import 'workers_error_worker_tag_length_limit.dart';sealed class EditWorkerResponse400Errors {const EditWorkerResponse400Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory EditWorkerResponse400Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
  'workers_ErrorMissingParam' => EditWorkerResponse400ErrorsWorkersErrorMissingParam.fromJson(json),
  'workers_ErrorWorkerNameInvalid' => EditWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid.fromJson(json),
  'workers_ErrorWorkerInvalid' => EditWorkerResponse400ErrorsWorkersErrorWorkerInvalid.fromJson(json),
  'workers_ErrorWorkerTagLengthLimit' => EditWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit.fromJson(json),
  'workers_ErrorWorkerTagInvalid' => EditWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid.fromJson(json),
  'workers_ErrorWorkerNameSubdomainLengthLimit' => EditWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json),
  'workers_ErrorWorkerNamePreviewLengthLimit' => EditWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit.fromJson(json),
  'workers_ErrorWorkerObservabilitySamplingRateInvalid' => EditWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json),
  '10003' => EditWorkerResponse400Errors10003.fromJson(json),
  '10016' => EditWorkerResponse400Errors10016.fromJson(json),
  '10021' => EditWorkerResponse400Errors10021.fromJson(json),
  '100102' => EditWorkerResponse400Errors100102.fromJson(json),
  '100132' => EditWorkerResponse400Errors100132.fromJson(json),
  '100134' => EditWorkerResponse400Errors100134.fromJson(json),
  '100308' => EditWorkerResponse400Errors100308.fromJson(json),
  '100315' => EditWorkerResponse400Errors100315.fromJson(json),
  _ => EditWorkerResponse400Errors$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get code;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is EditWorkerResponse400Errors$Unknown; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorMissingParam extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorMissingParam(this.workersErrorMissingParam);

factory EditWorkerResponse400ErrorsWorkersErrorMissingParam.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorMissingParam(WorkersErrorMissingParam.fromJson(json)); }

final WorkersErrorMissingParam workersErrorMissingParam;

@override String get code { return 'workers_ErrorMissingParam'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorMissingParam.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorMissingParam && workersErrorMissingParam == other.workersErrorMissingParam; } 
@override int get hashCode { return workersErrorMissingParam.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorMissingParam(workersErrorMissingParam: $workersErrorMissingParam)'; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(this.workersErrorWorkerNameInvalid);

factory EditWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(WorkersErrorWorkerNameInvalid.fromJson(json)); }

final WorkersErrorWorkerNameInvalid workersErrorWorkerNameInvalid;

@override String get code { return 'workers_ErrorWorkerNameInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid && workersErrorWorkerNameInvalid == other.workersErrorWorkerNameInvalid; } 
@override int get hashCode { return workersErrorWorkerNameInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorWorkerNameInvalid(workersErrorWorkerNameInvalid: $workersErrorWorkerNameInvalid)'; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorWorkerInvalid extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorWorkerInvalid(this.workersErrorWorkerInvalid);

factory EditWorkerResponse400ErrorsWorkersErrorWorkerInvalid.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorWorkerInvalid(WorkersErrorWorkerInvalid.fromJson(json)); }

final WorkersErrorWorkerInvalid workersErrorWorkerInvalid;

@override String get code { return 'workers_ErrorWorkerInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorWorkerInvalid && workersErrorWorkerInvalid == other.workersErrorWorkerInvalid; } 
@override int get hashCode { return workersErrorWorkerInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorWorkerInvalid(workersErrorWorkerInvalid: $workersErrorWorkerInvalid)'; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(this.workersErrorWorkerTagLengthLimit);

factory EditWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(WorkersErrorWorkerTagLengthLimit.fromJson(json)); }

final WorkersErrorWorkerTagLengthLimit workersErrorWorkerTagLengthLimit;

@override String get code { return 'workers_ErrorWorkerTagLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit && workersErrorWorkerTagLengthLimit == other.workersErrorWorkerTagLengthLimit; } 
@override int get hashCode { return workersErrorWorkerTagLengthLimit.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorWorkerTagLengthLimit(workersErrorWorkerTagLengthLimit: $workersErrorWorkerTagLengthLimit)'; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(this.workersErrorWorkerTagInvalid);

factory EditWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(WorkersErrorWorkerTagInvalid.fromJson(json)); }

final WorkersErrorWorkerTagInvalid workersErrorWorkerTagInvalid;

@override String get code { return 'workers_ErrorWorkerTagInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid && workersErrorWorkerTagInvalid == other.workersErrorWorkerTagInvalid; } 
@override int get hashCode { return workersErrorWorkerTagInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorWorkerTagInvalid(workersErrorWorkerTagInvalid: $workersErrorWorkerTagInvalid)'; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(this.workersErrorWorkerNameSubdomainLengthLimit);

factory EditWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(WorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNameSubdomainLengthLimit workersErrorWorkerNameSubdomainLengthLimit;

@override String get code { return 'workers_ErrorWorkerNameSubdomainLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameSubdomainLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit && workersErrorWorkerNameSubdomainLengthLimit == other.workersErrorWorkerNameSubdomainLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNameSubdomainLengthLimit.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorWorkerNameSubdomainLengthLimit(workersErrorWorkerNameSubdomainLengthLimit: $workersErrorWorkerNameSubdomainLengthLimit)'; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(this.workersErrorWorkerNamePreviewLengthLimit);

factory EditWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(WorkersErrorWorkerNamePreviewLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNamePreviewLengthLimit workersErrorWorkerNamePreviewLengthLimit;

@override String get code { return 'workers_ErrorWorkerNamePreviewLengthLimit'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNamePreviewLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit && workersErrorWorkerNamePreviewLengthLimit == other.workersErrorWorkerNamePreviewLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNamePreviewLengthLimit.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorWorkerNamePreviewLengthLimit(workersErrorWorkerNamePreviewLengthLimit: $workersErrorWorkerNamePreviewLengthLimit)'; } 
 }
@immutable final class EditWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid extends EditWorkerResponse400Errors {const EditWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(this.workersErrorWorkerObservabilitySamplingRateInvalid);

factory EditWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json)); }

final WorkersErrorWorkerObservabilitySamplingRateInvalid workersErrorWorkerObservabilitySamplingRateInvalid;

@override String get code { return 'workers_ErrorWorkerObservabilitySamplingRateInvalid'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerObservabilitySamplingRateInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid && workersErrorWorkerObservabilitySamplingRateInvalid == other.workersErrorWorkerObservabilitySamplingRateInvalid; } 
@override int get hashCode { return workersErrorWorkerObservabilitySamplingRateInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400ErrorsWorkersErrorWorkerObservabilitySamplingRateInvalid(workersErrorWorkerObservabilitySamplingRateInvalid: $workersErrorWorkerObservabilitySamplingRateInvalid)'; } 
 }
@immutable final class EditWorkerResponse400Errors10003 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors10003(this.workersErrorMissingParam);

factory EditWorkerResponse400Errors10003.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors10003(WorkersErrorMissingParam.fromJson(json)); }

final WorkersErrorMissingParam workersErrorMissingParam;

@override String get code { return '10003'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorMissingParam.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors10003 && workersErrorMissingParam == other.workersErrorMissingParam; } 
@override int get hashCode { return workersErrorMissingParam.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors10003(workersErrorMissingParam: $workersErrorMissingParam)'; } 
 }
@immutable final class EditWorkerResponse400Errors10016 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors10016(this.workersErrorWorkerNameInvalid);

factory EditWorkerResponse400Errors10016.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors10016(WorkersErrorWorkerNameInvalid.fromJson(json)); }

final WorkersErrorWorkerNameInvalid workersErrorWorkerNameInvalid;

@override String get code { return '10016'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors10016 && workersErrorWorkerNameInvalid == other.workersErrorWorkerNameInvalid; } 
@override int get hashCode { return workersErrorWorkerNameInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors10016(workersErrorWorkerNameInvalid: $workersErrorWorkerNameInvalid)'; } 
 }
@immutable final class EditWorkerResponse400Errors10021 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors10021(this.workersErrorWorkerInvalid);

factory EditWorkerResponse400Errors10021.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors10021(WorkersErrorWorkerInvalid.fromJson(json)); }

final WorkersErrorWorkerInvalid workersErrorWorkerInvalid;

@override String get code { return '10021'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors10021 && workersErrorWorkerInvalid == other.workersErrorWorkerInvalid; } 
@override int get hashCode { return workersErrorWorkerInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors10021(workersErrorWorkerInvalid: $workersErrorWorkerInvalid)'; } 
 }
@immutable final class EditWorkerResponse400Errors100102 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors100102(this.workersErrorWorkerTagLengthLimit);

factory EditWorkerResponse400Errors100102.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors100102(WorkersErrorWorkerTagLengthLimit.fromJson(json)); }

final WorkersErrorWorkerTagLengthLimit workersErrorWorkerTagLengthLimit;

@override String get code { return '100102'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors100102 && workersErrorWorkerTagLengthLimit == other.workersErrorWorkerTagLengthLimit; } 
@override int get hashCode { return workersErrorWorkerTagLengthLimit.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors100102(workersErrorWorkerTagLengthLimit: $workersErrorWorkerTagLengthLimit)'; } 
 }
@immutable final class EditWorkerResponse400Errors100132 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors100132(this.workersErrorWorkerNameSubdomainLengthLimit);

factory EditWorkerResponse400Errors100132.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors100132(WorkersErrorWorkerNameSubdomainLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNameSubdomainLengthLimit workersErrorWorkerNameSubdomainLengthLimit;

@override String get code { return '100132'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameSubdomainLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors100132 && workersErrorWorkerNameSubdomainLengthLimit == other.workersErrorWorkerNameSubdomainLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNameSubdomainLengthLimit.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors100132(workersErrorWorkerNameSubdomainLengthLimit: $workersErrorWorkerNameSubdomainLengthLimit)'; } 
 }
@immutable final class EditWorkerResponse400Errors100134 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors100134(this.workersErrorWorkerTagInvalid);

factory EditWorkerResponse400Errors100134.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors100134(WorkersErrorWorkerTagInvalid.fromJson(json)); }

final WorkersErrorWorkerTagInvalid workersErrorWorkerTagInvalid;

@override String get code { return '100134'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors100134 && workersErrorWorkerTagInvalid == other.workersErrorWorkerTagInvalid; } 
@override int get hashCode { return workersErrorWorkerTagInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors100134(workersErrorWorkerTagInvalid: $workersErrorWorkerTagInvalid)'; } 
 }
@immutable final class EditWorkerResponse400Errors100308 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors100308(this.workersErrorWorkerObservabilitySamplingRateInvalid);

factory EditWorkerResponse400Errors100308.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors100308(WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(json)); }

final WorkersErrorWorkerObservabilitySamplingRateInvalid workersErrorWorkerObservabilitySamplingRateInvalid;

@override String get code { return '100308'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerObservabilitySamplingRateInvalid.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors100308 && workersErrorWorkerObservabilitySamplingRateInvalid == other.workersErrorWorkerObservabilitySamplingRateInvalid; } 
@override int get hashCode { return workersErrorWorkerObservabilitySamplingRateInvalid.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors100308(workersErrorWorkerObservabilitySamplingRateInvalid: $workersErrorWorkerObservabilitySamplingRateInvalid)'; } 
 }
@immutable final class EditWorkerResponse400Errors100315 extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors100315(this.workersErrorWorkerNamePreviewLengthLimit);

factory EditWorkerResponse400Errors100315.fromJson(Map<String, dynamic> json) { return EditWorkerResponse400Errors100315(WorkersErrorWorkerNamePreviewLengthLimit.fromJson(json)); }

final WorkersErrorWorkerNamePreviewLengthLimit workersErrorWorkerNamePreviewLengthLimit;

@override String get code { return '100315'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNamePreviewLengthLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors100315 && workersErrorWorkerNamePreviewLengthLimit == other.workersErrorWorkerNamePreviewLengthLimit; } 
@override int get hashCode { return workersErrorWorkerNamePreviewLengthLimit.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors100315(workersErrorWorkerNamePreviewLengthLimit: $workersErrorWorkerNamePreviewLengthLimit)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class EditWorkerResponse400Errors$Unknown extends EditWorkerResponse400Errors {const EditWorkerResponse400Errors$Unknown(this.json);

final Map<String, dynamic> json;

@override String get code { return json['code'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse400Errors$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'EditWorkerResponse400Errors.unknown($json)'; } 
 }

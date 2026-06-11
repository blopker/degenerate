// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_missing_param.dart';import 'workers_error_worker_invalid.dart';import 'workers_error_worker_name_invalid.dart';import 'workers_error_worker_name_preview_length_limit.dart';import 'workers_error_worker_name_subdomain_length_limit.dart';import 'workers_error_worker_observability_sampling_rate_invalid.dart';import 'workers_error_worker_tag_invalid.dart';import 'workers_error_worker_tag_length_limit.dart';sealed class UpdateWorkerResponse400Errors {const UpdateWorkerResponse400Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory UpdateWorkerResponse400Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
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

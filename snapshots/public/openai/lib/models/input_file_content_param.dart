// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FileDetailEnum {const FileDetailEnum._(this.value);

factory FileDetailEnum.fromJson(String json) { return switch (json) {
  'high' => high,
  'low' => low,
  _ => FileDetailEnum._(json),
}; }

static const FileDetailEnum high = FileDetailEnum._('high');

static const FileDetailEnum low = FileDetailEnum._('low');

static const List<FileDetailEnum> values = [high, low];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FileDetailEnum && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FileDetailEnum($value)'; } 
 }
/// The type of the input item. Always `input_file`.
@immutable final class InputFileContentParamType {const InputFileContentParamType._(this.value);

factory InputFileContentParamType.fromJson(String json) { return switch (json) {
  'input_file' => inputFile,
  _ => InputFileContentParamType._(json),
}; }

static const InputFileContentParamType inputFile = InputFileContentParamType._('input_file');

static const List<InputFileContentParamType> values = [inputFile];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputFileContentParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InputFileContentParamType($value)'; } 
 }
/// A file input to the model.
@immutable final class InputFileContentParam {const InputFileContentParam({this.type = InputFileContentParamType.inputFile, this.fileId = const Omittable.absent(), this.filename = const Omittable.absent(), this.fileData = const Omittable.absent(), this.fileUrl = const Omittable.absent(), this.detail, });

factory InputFileContentParam.fromJson(Map<String, dynamic> json) { return InputFileContentParam(
  type: InputFileContentParamType.fromJson(json['type'] as String),
  fileId: json.containsKey('file_id') ? Omittable(json['file_id'] as String?) : const Omittable.absent(),
  filename: json.containsKey('filename') ? Omittable(json['filename'] as String?) : const Omittable.absent(),
  fileData: json.containsKey('file_data') ? Omittable(json['file_data'] as String?) : const Omittable.absent(),
  fileUrl: json.containsKey('file_url') ? Omittable(json['file_url'] as String?) : const Omittable.absent(),
  detail: json['detail'] != null ? FileDetailEnum.fromJson(json['detail'] as String) : null,
); }

/// The type of the input item. Always `input_file`.
final InputFileContentParamType type;

/// The ID of the file to be sent to the model.
final Omittable<String?> fileId;

/// The name of the file to be sent to the model.
final Omittable<String?> filename;

/// The base64-encoded data of the file to be sent to the model.
final Omittable<String?> fileData;

/// The URL of the file to be sent to the model.
final Omittable<String?> fileUrl;

/// The detail level of the file to be sent to the model. One of `high` or `low`. Defaults to `high`.
final FileDetailEnum? detail;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (fileId.isPresent) 'file_id': fileId.value,
  if (filename.isPresent) 'filename': filename.value,
  if (fileData.isPresent) 'file_data': fileData.value,
  if (fileUrl.isPresent) 'file_url': fileUrl.value,
  if (detail != null) 'detail': detail?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
InputFileContentParam copyWith({InputFileContentParamType? type, Omittable<String?>? fileId, Omittable<String?>? filename, Omittable<String?>? fileData, Omittable<String?>? fileUrl, FileDetailEnum? Function()? detail, }) { return InputFileContentParam(
  type: type ?? this.type,
  fileId: fileId ?? this.fileId,
  filename: filename ?? this.filename,
  fileData: fileData ?? this.fileData,
  fileUrl: fileUrl ?? this.fileUrl,
  detail: detail != null ? detail() : this.detail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputFileContentParam &&
          type == other.type &&
          fileId == other.fileId &&
          filename == other.filename &&
          fileData == other.fileData &&
          fileUrl == other.fileUrl &&
          detail == other.detail; } 
@override int get hashCode { return Object.hash(type, fileId, filename, fileData, fileUrl, detail); } 
@override String toString() { return 'InputFileContentParam(type: $type, fileId: $fileId, filename: $filename, fileData: $fileData, fileUrl: $fileUrl, detail: $detail)'; } 
 }

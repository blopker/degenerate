// GENERATED CODE - DO NOT MODIFY BY HAND

final class FileInputDetail {const FileInputDetail._(this.value);

factory FileInputDetail.fromJson(String json) { return switch (json) {
  'low' => low,
  'high' => high,
  _ => FileInputDetail._(json),
}; }

static const FileInputDetail low = FileInputDetail._('low');

static const FileInputDetail high = FileInputDetail._('high');

static const List<FileInputDetail> values = [low, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FileInputDetail && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FileInputDetail($value)'; } 
 }
/// A file input to the model.
final class InputFileContent {const InputFileContent({this.type = 'input_file', this.fileId, this.filename, this.fileData, this.fileUrl, this.detail, });

factory InputFileContent.fromJson(Map<String, dynamic> json) { return InputFileContent(
  type: json['type'] as String,
  fileId: json['file_id'] as String?,
  filename: json['filename'] as String?,
  fileData: json['file_data'] as String?,
  fileUrl: json['file_url'] as String?,
  detail: json['detail'] != null ? FileInputDetail.fromJson(json['detail'] as String) : null,
); }

/// The type of the input item. Always `input_file`.
final String type;

/// The ID of the file to be sent to the model.
final String? fileId;

/// The name of the file to be sent to the model.
final String? filename;

/// The content of the file to be sent to the model.
/// 
final String? fileData;

/// The URL of the file to be sent to the model.
final String? fileUrl;

/// The detail level of the file to be sent to the model. One of `high` or `low`. Defaults to `high`.
final FileInputDetail? detail;

Map<String, dynamic> toJson() { return {
  'type': type,
  'file_id': ?fileId,
  'filename': ?filename,
  'file_data': ?fileData,
  'file_url': ?fileUrl,
  if (detail != null) 'detail': detail?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
InputFileContent copyWith({String? type, String? Function()? fileId, String Function()? filename, String Function()? fileData, String Function()? fileUrl, FileInputDetail Function()? detail, }) { return InputFileContent(
  type: type ?? this.type,
  fileId: fileId != null ? fileId() : this.fileId,
  filename: filename != null ? filename() : this.filename,
  fileData: fileData != null ? fileData() : this.fileData,
  fileUrl: fileUrl != null ? fileUrl() : this.fileUrl,
  detail: detail != null ? detail() : this.detail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputFileContent &&
          type == other.type &&
          fileId == other.fileId &&
          filename == other.filename &&
          fileData == other.fileData &&
          fileUrl == other.fileUrl &&
          detail == other.detail; } 
@override int get hashCode { return Object.hash(type, fileId, filename, fileData, fileUrl, detail); } 
@override String toString() { return 'InputFileContent(type: $type, fileId: $fileId, filename: $filename, fileData: $fileData, fileUrl: $fileUrl, detail: $detail)'; } 
 }

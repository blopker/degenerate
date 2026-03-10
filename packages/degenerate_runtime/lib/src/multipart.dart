import 'dart:typed_data';

/// A single field in a multipart/form-data request.
///
/// Each field is either a text value or a binary file.
sealed class ApiMultipartField {
  /// The form field name.
  final String name;

  const ApiMultipartField(this.name);

  /// Create a text form field.
  const factory ApiMultipartField.text(String name, String value) =
      ApiMultipartTextField;

  /// Create a binary file field.
  const factory ApiMultipartField.file(
    String name,
    Uint8List bytes, {
    String? filename,
    String? contentType,
  }) = ApiMultipartFileField;
}

/// A text field in a multipart/form-data request.
final class ApiMultipartTextField extends ApiMultipartField {
  final String value;

  const ApiMultipartTextField(super.name, this.value);
}

/// A binary file field in a multipart/form-data request.
final class ApiMultipartFileField extends ApiMultipartField {
  final Uint8List bytes;
  final String? filename;
  final String? contentType;

  const ApiMultipartFileField(
    super.name,
    this.bytes, {
    this.filename,
    this.contentType,
  });
}

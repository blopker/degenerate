import 'dart:typed_data';

/// A single field in a multipart/form-data request.
///
/// Each field is either a text value or a binary file.
sealed class ApiMultipartField {
  /// Creates a multipart field with the given [name].
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

  /// The form field name.
  final String name;
}

/// A text field in a multipart/form-data request.
final class ApiMultipartTextField extends ApiMultipartField {
  /// Creates a text multipart field with the given [name] and [value].
  const ApiMultipartTextField(super.name, this.value);

  /// The text value of this form field.
  final String value;
}

/// A binary file field in a multipart/form-data request.
final class ApiMultipartFileField extends ApiMultipartField {
  /// Creates a file multipart field with the given [name] and [bytes].
  const ApiMultipartFileField(
    super.name,
    this.bytes, {
    this.filename,
    this.contentType,
  });

  /// The raw bytes of the file.
  final Uint8List bytes;

  /// The filename to use in the Content-Disposition header.
  final String? filename;

  /// The MIME type of the file (e.g. `image/png`).
  final String? contentType;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';/// The front of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `additional_verification`. Note that `additional_verification` files are [not downloadable](/file-upload#uploading-a-file).
@immutable
final class LegalEntityCompanyVerificationDocumentFront {
  const LegalEntityCompanyVerificationDocumentFront({this.string = const Omittable.absent(),
this.file = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const LegalEntityCompanyVerificationDocumentFront._({required this.rawValue, required this.string,
required this.file,});
  factory LegalEntityCompanyVerificationDocumentFront.fromJson(Object? json) => LegalEntityCompanyVerificationDocumentFront._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
file: parseAnyOfVariant<File>(json, (value) => File.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<File> file;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || file.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (file.isPresent) file.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is LegalEntityCompanyVerificationDocumentFront && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'LegalEntityCompanyVerificationDocumentFront(${toJson()})';
}

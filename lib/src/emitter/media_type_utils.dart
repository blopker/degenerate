import '../ir/ir_types.dart';

const _textPlainMediaType = 'text/plain';
const _multipartFormDataMediaType = 'multipart/form-data';
const _formUrlencodedMediaType = 'application/x-www-form-urlencoded';

String normalizeMediaType(String mediaType) {
  return mediaType.split(';').first.trim().toLowerCase();
}

bool isJsonLikeMediaType(String mediaType) {
  final normalized = normalizeMediaType(mediaType);
  return normalized == 'application/json' ||
      normalized == '*/*' ||
      (normalized.startsWith('application/') && normalized.endsWith('+json'));
}

(String, IrMediaType)? preferredContent(Map<String, IrMediaType> content) {
  if (content.isEmpty) return null;
  for (final entry in content.entries) {
    if (isJsonLikeMediaType(entry.key)) return (entry.key, entry.value);
  }
  for (final entry in content.entries) {
    if (normalizeMediaType(entry.key) == _textPlainMediaType) {
      return (entry.key, entry.value);
    }
  }
  final first = content.entries.first;
  return (first.key, first.value);
}

bool isMultipartMediaType(String mediaType) {
  return normalizeMediaType(mediaType) == _multipartFormDataMediaType;
}

bool isFormUrlencodedMediaType(String mediaType) {
  return normalizeMediaType(mediaType) == _formUrlencodedMediaType;
}

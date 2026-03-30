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

/// Selects the best content type from a map of media types.
///
/// Preference order: JSON > text/plain > multipart/form-data >
/// form-urlencoded > application/octet-stream > first entry.
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
  for (final entry in content.entries) {
    if (isMultipartMediaType(entry.key)) return (entry.key, entry.value);
  }
  for (final entry in content.entries) {
    if (isFormUrlencodedMediaType(entry.key)) return (entry.key, entry.value);
  }
  for (final entry in content.entries) {
    if (isOctetStreamMediaType(entry.key)) return (entry.key, entry.value);
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

bool isOctetStreamMediaType(String mediaType) {
  return normalizeMediaType(mediaType) == 'application/octet-stream';
}

bool isEventStreamMediaType(String mediaType) {
  return normalizeMediaType(mediaType) == 'text/event-stream';
}

bool isJsonlMediaType(String mediaType) {
  final normalized = normalizeMediaType(mediaType);
  return normalized == 'application/jsonl' ||
      normalized == 'application/x-ndjson' ||
      normalized == 'application/json-seq';
}

/// The kind of streaming format.
enum StreamKind { sse, jsonl }

/// Find the `text/event-stream` response content for an operation, if any.
(String, IrMediaType)? eventStreamContent(IrOperation op) {
  // Check 2xx responses for text/event-stream content type.
  for (final entry in op.responses.entries) {
    if (entry.key >= 200 && entry.key < 300) {
      for (final content in entry.value.content.entries) {
        if (isEventStreamMediaType(content.key)) {
          return (content.key, content.value);
        }
      }
    }
  }
  return null;
}

/// Find any streaming response content (SSE or JSONL) for an operation.
(String, IrMediaType, StreamKind)? streamingContent(IrOperation op) {
  for (final entry in op.responses.entries) {
    if (entry.key >= 200 && entry.key < 300) {
      for (final content in entry.value.content.entries) {
        if (isEventStreamMediaType(content.key)) {
          return (content.key, content.value, StreamKind.sse);
        }
        if (isJsonlMediaType(content.key)) {
          return (content.key, content.value, StreamKind.jsonl);
        }
      }
    }
  }
  return null;
}

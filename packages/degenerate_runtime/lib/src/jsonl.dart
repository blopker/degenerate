import 'dart:async';
import 'dart:convert';

/// Parses a byte stream of newline-delimited JSON (JSONL/NDJSON) into
/// individual JSON strings, one per non-empty line.
Stream<String> parseJsonlStream(Stream<List<int>> byteStream) {
  return byteStream
      .transform(const Utf8Decoder(allowMalformed: true))
      .transform(const LineSplitter())
      .where((line) => line.trim().isNotEmpty);
}

import 'dart:async';
import 'dart:convert';

/// A parsed Server-Sent Event.
final class SseEvent {
  /// Creates an [SseEvent] with the given [data] and optional fields.
  const SseEvent({required this.data, this.event, this.id});

  /// The event type (from `event:` field), or `null` for default events.
  final String? event;

  /// The event data (from `data:` field(s), joined by newlines).
  final String data;

  /// The event ID (from `id:` field), or `null`.
  final String? id;

  @override
  String toString() =>
      event != null ? 'SseEvent($event, $data)' : 'SseEvent($data)';
}

/// Parse a byte stream of Server-Sent Events into [SseEvent]s.
///
/// Events where `data` equals [doneSignal] (default `'[DONE]'`) are
/// filtered out and the stream completes. Set [doneSignal] to `null`
/// to disable this behavior (the stream ends when the connection closes).
///
/// See the [SSE specification](https://html.spec.whatwg.org/multipage/server-sent-events.html#event-stream-interpretation).
Stream<SseEvent> parseSseStream(
  Stream<List<int>> byteStream, {
  String? doneSignal = '[DONE]',
}) async* {
  // Decode UTF-8, then split on lines. SSE uses \n, \r, or \r\n.
  final lines = byteStream
      .transform(const Utf8Decoder(allowMalformed: true))
      .transform(const LineSplitter());

  String? eventType;
  final dataLines = <String>[];
  String? lastId;

  await for (final line in lines) {
    if (line.isEmpty) {
      // Empty line = event boundary. Dispatch if we have data.
      if (dataLines.isNotEmpty) {
        final data = dataLines.join('\n');
        if (doneSignal != null && data == doneSignal) return;
        yield SseEvent(event: eventType, data: data, id: lastId);
      }
      eventType = null;
      dataLines.clear();
      continue;
    }

    // Lines starting with ':' are comments - ignore.
    if (line.startsWith(':')) continue;

    final colonIndex = line.indexOf(':');
    final String field;
    final String value;
    if (colonIndex == -1) {
      field = line;
      value = '';
    } else {
      field = line.substring(0, colonIndex);
      // Skip optional single space after colon.
      final valueStart =
          (colonIndex + 1 < line.length && line[colonIndex + 1] == ' ')
          ? colonIndex + 2
          : colonIndex + 1;
      value = line.substring(valueStart);
    }

    switch (field) {
      case 'data':
        dataLines.add(value);
      case 'event':
        eventType = value;
      case 'id':
        lastId = value;
      // 'retry' and unknown fields are ignored.
    }
  }

  // If the stream ends without a trailing blank line, flush any pending event.
  if (dataLines.isNotEmpty) {
    final data = dataLines.join('\n');
    if (doneSignal != null && data == doneSignal) return;
    yield SseEvent(event: eventType, data: data, id: lastId);
  }
}

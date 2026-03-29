import 'dart:convert';

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

Stream<List<int>> _encode(String text) => Stream.value(utf8.encode(text));

Stream<List<int>> _encodeChunks(List<String> chunks) =>
    Stream.fromIterable(chunks.map(utf8.encode));

void main() {
  group('parseSseStream', () {
    test('parses simple data events', () async {
      final events = await parseSseStream(
        _encode('data: hello\n\ndata: world\n\n'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(2));
      expect(events[0].data, 'hello');
      expect(events[1].data, 'world');
    });

    test('parses JSON data events', () async {
      final events = await parseSseStream(
        _encode('data: {"id":1}\n\ndata: {"id":2}\n\n'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(2));
      expect(jsonDecode(events[0].data), {'id': 1});
      expect(jsonDecode(events[1].data), {'id': 2});
    });

    test('handles multi-line data fields', () async {
      final events = await parseSseStream(
        _encode('data: line1\ndata: line2\n\n'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(1));
      expect(events[0].data, 'line1\nline2');
    });

    test('parses event type', () async {
      final events = await parseSseStream(
        _encode('event: update\ndata: payload\n\n'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(1));
      expect(events[0].event, 'update');
      expect(events[0].data, 'payload');
    });

    test('parses event id', () async {
      final events = await parseSseStream(
        _encode('id: 42\ndata: payload\n\n'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(1));
      expect(events[0].id, '42');
    });

    test('ignores comment lines', () async {
      final events = await parseSseStream(
        _encode(': this is a comment\ndata: hello\n\n'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(1));
      expect(events[0].data, 'hello');
    });

    test('stops at [DONE] sentinel', () async {
      final events = await parseSseStream(
        _encode('data: first\n\ndata: [DONE]\n\ndata: ignored\n\n'),
      ).toList();

      expect(events, hasLength(1));
      expect(events[0].data, 'first');
    });

    test('handles custom done signal', () async {
      final events = await parseSseStream(
        _encode('data: first\n\ndata: END\n\ndata: ignored\n\n'),
        doneSignal: 'END',
      ).toList();

      expect(events, hasLength(1));
      expect(events[0].data, 'first');
    });

    test('skips empty events (no data lines)', () async {
      final events = await parseSseStream(
        _encode('event: ping\n\ndata: hello\n\n'),
        doneSignal: null,
      ).toList();

      // First event has no data lines, so it's skipped
      expect(events, hasLength(1));
      expect(events[0].data, 'hello');
    });

    test('handles data split across chunks', () async {
      final events = await parseSseStream(
        _encodeChunks(['data: hel', 'lo\n\ndata: wor', 'ld\n\n']),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(2));
      expect(events[0].data, 'hello');
      expect(events[1].data, 'world');
    });

    test('handles stream ending without trailing newline', () async {
      final events = await parseSseStream(
        _encode('data: last'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(1));
      expect(events[0].data, 'last');
    });

    test('strips optional space after colon', () async {
      final events = await parseSseStream(
        _encode('data:no-space\n\ndata: with-space\n\n'),
        doneSignal: null,
      ).toList();

      expect(events, hasLength(2));
      expect(events[0].data, 'no-space');
      expect(events[1].data, 'with-space');
    });
  });
}

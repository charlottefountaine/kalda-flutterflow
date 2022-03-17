import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gratitude_journal_record.g.dart';

abstract class GratitudeJournalRecord
    implements Built<GratitudeJournalRecord, GratitudeJournalRecordBuilder> {
  static Serializer<GratitudeJournalRecord> get serializer =>
      _$gratitudeJournalRecordSerializer;

  @nullable
  DocumentReference get userRef;

  @nullable
  String get entryText;

  @nullable
  DateTime get postTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GratitudeJournalRecordBuilder builder) =>
      builder..entryText = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gratitudeJournal');

  static Stream<GratitudeJournalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GratitudeJournalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  GratitudeJournalRecord._();
  factory GratitudeJournalRecord(
          [void Function(GratitudeJournalRecordBuilder) updates]) =
      _$GratitudeJournalRecord;

  static GratitudeJournalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGratitudeJournalRecordData({
  DocumentReference userRef,
  String entryText,
  DateTime postTime,
}) =>
    serializers.toFirestore(
        GratitudeJournalRecord.serializer,
        GratitudeJournalRecord((g) => g
          ..userRef = userRef
          ..entryText = entryText
          ..postTime = postTime));

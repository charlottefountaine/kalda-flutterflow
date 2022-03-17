import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'course_journal_record.g.dart';

abstract class CourseJournalRecord
    implements Built<CourseJournalRecord, CourseJournalRecordBuilder> {
  static Serializer<CourseJournalRecord> get serializer =>
      _$courseJournalRecordSerializer;

  @nullable
  DocumentReference get userRef;

  @nullable
  DocumentReference get courseRef;

  @nullable
  String get question;

  @nullable
  String get answer;

  @nullable
  DateTime get postTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CourseJournalRecordBuilder builder) => builder
    ..question = ''
    ..answer = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courseJournal');

  static Stream<CourseJournalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CourseJournalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CourseJournalRecord._();
  factory CourseJournalRecord(
          [void Function(CourseJournalRecordBuilder) updates]) =
      _$CourseJournalRecord;

  static CourseJournalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCourseJournalRecordData({
  DocumentReference userRef,
  DocumentReference courseRef,
  String question,
  String answer,
  DateTime postTime,
}) =>
    serializers.toFirestore(
        CourseJournalRecord.serializer,
        CourseJournalRecord((c) => c
          ..userRef = userRef
          ..courseRef = courseRef
          ..question = question
          ..answer = answer
          ..postTime = postTime));

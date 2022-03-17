import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_courses_record.g.dart';

abstract class UsersCoursesRecord
    implements Built<UsersCoursesRecord, UsersCoursesRecordBuilder> {
  static Serializer<UsersCoursesRecord> get serializer =>
      _$usersCoursesRecordSerializer;

  @nullable
  DocumentReference get userRef;

  @nullable
  DocumentReference get refCourse;

  @nullable
  int get progress;

  @nullable
  @BuiltValueField(wireName: 'DUPnumberOfLessons')
  int get dUPnumberOfLessons;

  @nullable
  bool get courseFinished;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersCoursesRecordBuilder builder) => builder
    ..progress = 0
    ..dUPnumberOfLessons = 0
    ..courseFinished = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usersCourses');

  static Stream<UsersCoursesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersCoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersCoursesRecord._();
  factory UsersCoursesRecord(
          [void Function(UsersCoursesRecordBuilder) updates]) =
      _$UsersCoursesRecord;

  static UsersCoursesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersCoursesRecordData({
  DocumentReference userRef,
  DocumentReference refCourse,
  int progress,
  int dUPnumberOfLessons,
  bool courseFinished,
}) =>
    serializers.toFirestore(
        UsersCoursesRecord.serializer,
        UsersCoursesRecord((u) => u
          ..userRef = userRef
          ..refCourse = refCourse
          ..progress = progress
          ..dUPnumberOfLessons = dUPnumberOfLessons
          ..courseFinished = courseFinished));

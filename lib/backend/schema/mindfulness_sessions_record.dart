import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mindfulness_sessions_record.g.dart';

abstract class MindfulnessSessionsRecord
    implements
        Built<MindfulnessSessionsRecord, MindfulnessSessionsRecordBuilder> {
  static Serializer<MindfulnessSessionsRecord> get serializer =>
      _$mindfulnessSessionsRecordSerializer;

  @nullable
  String get sessionName;

  @nullable
  int get sessionLengthMinutes;

  @nullable
  String get sessionImage;

  @nullable
  String get sessionVideo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MindfulnessSessionsRecordBuilder builder) =>
      builder
        ..sessionName = ''
        ..sessionLengthMinutes = 0
        ..sessionImage = ''
        ..sessionVideo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mindfulnessSessions');

  static Stream<MindfulnessSessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MindfulnessSessionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MindfulnessSessionsRecord._();
  factory MindfulnessSessionsRecord(
          [void Function(MindfulnessSessionsRecordBuilder) updates]) =
      _$MindfulnessSessionsRecord;

  static MindfulnessSessionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMindfulnessSessionsRecordData({
  String sessionName,
  int sessionLengthMinutes,
  String sessionImage,
  String sessionVideo,
}) =>
    serializers.toFirestore(
        MindfulnessSessionsRecord.serializer,
        MindfulnessSessionsRecord((m) => m
          ..sessionName = sessionName
          ..sessionLengthMinutes = sessionLengthMinutes
          ..sessionImage = sessionImage
          ..sessionVideo = sessionVideo));

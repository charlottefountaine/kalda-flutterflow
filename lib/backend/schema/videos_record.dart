import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videos_record.g.dart';

abstract class VideosRecord
    implements Built<VideosRecord, VideosRecordBuilder> {
  static Serializer<VideosRecord> get serializer => _$videosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'video-link')
  String get videoLink;

  @nullable
  String get journalNoteText;

  @nullable
  int get index;

  @nullable
  DocumentReference get courseRef;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VideosRecordBuilder builder) => builder
    ..name = ''
    ..videoLink = ''
    ..journalNoteText = ''
    ..index = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  VideosRecord._();
  factory VideosRecord([void Function(VideosRecordBuilder) updates]) =
      _$VideosRecord;

  static VideosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVideosRecordData({
  String name,
  String videoLink,
  String journalNoteText,
  int index,
  DocumentReference courseRef,
}) =>
    serializers.toFirestore(
        VideosRecord.serializer,
        VideosRecord((v) => v
          ..name = name
          ..videoLink = videoLink
          ..journalNoteText = journalNoteText
          ..index = index
          ..courseRef = courseRef));

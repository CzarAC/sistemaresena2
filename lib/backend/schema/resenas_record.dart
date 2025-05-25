import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResenasRecord extends FirestoreRecord {
  ResenasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "resena" field.
  String? _resena;
  String get resena => _resena ?? '';
  bool hasResena() => _resena != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "photo_video" field.
  String? _photoVideo;
  String get photoVideo => _photoVideo ?? '';
  bool hasPhotoVideo() => _photoVideo != null;

  // "imagenes" field.
  String? _imagenes;
  String get imagenes => _imagenes ?? '';
  bool hasImagenes() => _imagenes != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _resena = snapshotData['resena'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
    _date = snapshotData['date'] as DateTime?;
    _username = snapshotData['username'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _photoVideo = snapshotData['photo_video'] as String?;
    _imagenes = snapshotData['imagenes'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('resenas')
          : FirebaseFirestore.instance.collectionGroup('resenas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('resenas').doc(id);

  static Stream<ResenasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResenasRecord.fromSnapshot(s));

  static Future<ResenasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResenasRecord.fromSnapshot(s));

  static ResenasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResenasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResenasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResenasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResenasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResenasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResenasRecordData({
  String? email,
  String? resena,
  int? rating,
  DateTime? date,
  String? username,
  String? photoUrl,
  String? photoVideo,
  String? imagenes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'resena': resena,
      'rating': rating,
      'date': date,
      'username': username,
      'photo_url': photoUrl,
      'photo_video': photoVideo,
      'imagenes': imagenes,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResenasRecordDocumentEquality implements Equality<ResenasRecord> {
  const ResenasRecordDocumentEquality();

  @override
  bool equals(ResenasRecord? e1, ResenasRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.resena == e2?.resena &&
        e1?.rating == e2?.rating &&
        e1?.date == e2?.date &&
        e1?.username == e2?.username &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.photoVideo == e2?.photoVideo &&
        e1?.imagenes == e2?.imagenes;
  }

  @override
  int hash(ResenasRecord? e) => const ListEquality().hash([
        e?.email,
        e?.resena,
        e?.rating,
        e?.date,
        e?.username,
        e?.photoUrl,
        e?.photoVideo,
        e?.imagenes
      ]);

  @override
  bool isValidKey(Object? o) => o is ResenasRecord;
}

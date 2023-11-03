import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addUserToFirestore(String name, String email,
      List<String> communityIds, String userUid) async {
    try {
      // Firestore koleksiyonunu ve belgenin referansını oluştur
      final CollectionReference usersCollection =
          _firestore.collection('users');
      final DocumentReference userDocument = usersCollection
          .doc(); // Firestore otomatik bir belge kimliği oluşturur

      // Kullanıcı verilerini hazırla
      final userData = {
        'name': name,
        'email': email,
        'communityIds': communityIds,
        'userUid': userUid
      };

      // Firestore belgesine verileri ekle
      await userDocument.set(userData);

      print('Kullanıcı Firestore\'a eklendi: $name, $email');
    } catch (e) {
      print('Hata oluştu: $e');
    }
  }
}

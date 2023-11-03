import 'package:firebase_auth/firebase_auth.dart';
import 'package:toplulugum/services/firestore_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String _mapFirebaseErrorToMessage(e) {
    switch (e.code) {
      case "weak-password":
        return "Şifre çok zayıf. En az 6 karakterden oluşmalıdır.";
      case "email-already-in-use":
        return "Bu e-posta adresi zaten kullanılıyor.";
      case "invalid-email":
        return "Geçersiz e-posta adresi formatı.";
      case "user-not-found":
        return "Kullanıcı bulunamadı. Lütfen kayıt olun.";
      case "wrong-password":
        return "Yanlış şifre. Tekrar deneyin.";
      default:
        return "Bir hata oluştu: ${e.toString()}";
    }
  }

  Future<String?> registerWithEmailAndPassword(
      String name, String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      String uid = userCredential.user!.uid;
      UserRepository().addUserToFirestore(name, email, [], uid);
      return null;
    } catch (e) {
      return _mapFirebaseErrorToMessage(e);
    }
  }

  Future<String?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } catch (e) {
      return _mapFirebaseErrorToMessage(e);
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<bool> isEmailVerified() async {
    User? user = _auth.currentUser;
    await user?.reload();
    return user?.emailVerified ?? false;
  }

  Future<void> sendEmailVerification() async {
    User? user = _auth.currentUser;
    await user?.sendEmailVerification();
  }

  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print('Şifre sıfırlama hatası: $e');
    }
  }
}

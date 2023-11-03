import 'package:toplulugum/services/auth_service.dart';

Future<String?> LoginWithEmailAndPassword(
    _passcontroller, _mailcontroller) async {
  String e;

  if (_mailcontroller.text.isEmpty || _passcontroller.text.isEmpty) {
    e = "Lütfen tüm alanları doldurun";

    return e;
  }

  String? registerError = await AuthService().signInWithEmailAndPassword(
    _mailcontroller.text,
    _passcontroller.text,
  );

  if (registerError != null) {
    print("Kayıt hatası: $registerError");
  } else {
    print("Kayıt başarılı");
  }
  return registerError;
}

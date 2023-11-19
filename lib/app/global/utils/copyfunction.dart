import 'package:clipboard/clipboard.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/showsnackbar.dart';

void copyToClipboard(String textToCopy, context) {
  FlutterClipboard.copy(textToCopy).then((value) {
    // Kopyalama işlemi tamamlandığında isteğe bağlı olarak bir işlem yapabilirsiniz
    showSnackBar(
        context, AppColors.green, "Metin panoya kopyalandı: $textToCopy");
  });
}

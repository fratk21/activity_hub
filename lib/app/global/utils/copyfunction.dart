import 'package:clipboard/clipboard.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/showsnackbar.dart';

void copyToClipboard(String textToCopy) {
  FlutterClipboard.copy(textToCopy).then((value) {});
}

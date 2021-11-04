import 'package:flavoured_app_with_codemagic/enviroments.dart';
import 'package:flavoured_app_with_codemagic/main_common.dart';

Future<void> main() async {
  await mainCommon(Enviroments.dev);
}

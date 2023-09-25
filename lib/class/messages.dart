import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_America': {'hello': 'Hello'},
        'urdu_Pakistan': {'hello': 'ہیلو'},
        'arabic_Saudi Arabia': {'hello': 'مرحبًا'},
      };
}

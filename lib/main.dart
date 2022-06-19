import 'package:facebook_clon/presentation/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FaceboockClon());
}

class FaceboockClon extends StatelessWidget {
  const FaceboockClon();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Faceboock clon',
      routes: PageName.routes,
      initialRoute: PageName.home,
    );
  }
}

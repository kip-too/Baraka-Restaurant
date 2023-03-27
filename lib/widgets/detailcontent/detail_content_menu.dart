import 'package:flutter/material.dart';

class DetailContentMenu extends StatelessWidget {
  const DetailContentMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.',
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.black87,
        fontWeight: FontWeight.w400,
        height: 1.50,
      ),
      textAlign: TextAlign.justify,
    );
  }
}

import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconBadge(Icons.pool, size: 64.0, color: Color.fromRGBO(255, 255, 255, 1.0)),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  IconBadge(this.icon, {this.size = 32.0, this.color: Colors.white});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: color,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0)
    );
  }
}


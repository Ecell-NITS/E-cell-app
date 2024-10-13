import 'package:flutter/material.dart';
import 'package:ecell_app/configs/configs.dart';
class MemberCard extends StatelessWidget {
  final String name;
  final String designation;
  final String img;
  const MemberCard({required this.name, required this.designation, required this.img,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            stops: [0.77,0.79,1],
            colors: [Color.fromRGBO(255, 255, 255,0.2),Color.fromRGBO(22, 39, 64,1),Color.fromRGBO(22, 39, 64,1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
      ),
      child: Card(
        margin: const EdgeInsets.all(3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: Column(
            children: [AspectRatio(
              aspectRatio: 142/165,
              child: Image.asset(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                img,
              ),
            ),
              const SizedBox(height: 3,),
              Text(name,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: ScreenUtil.defaultSize.width * 0.047,
                    color: const Color.fromRGBO(22,39,64,1)
                ),),
              Text(designation,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil.defaultSize.width * 0.038,
                    color: const Color.fromRGBO(22,39,64,1)
                ),
              )]
        ),
      ),
    );
  }
}

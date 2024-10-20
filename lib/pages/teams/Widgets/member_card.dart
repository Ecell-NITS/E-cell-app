import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MemberCard extends StatefulWidget {
  final String name;
  final String designation;
  final String img;
  const MemberCard({required this.name, required this.designation, required this.img,super.key});

  @override
  State<MemberCard> createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  bool focus=false;
  FocusNode focusNode=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      canRequestFocus: true,
      onFocusChange: (val){
        setState(() {
          focus=!focus;
        });
      },
      child: GestureDetector(
        onTap: (){
          focusNode.hasFocus? focusNode.unfocus() : focusNode.requestFocus() ;
        },
        child: Container(
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
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) => Stack(
                alignment: Alignment.center,
                children: [Column(
                    children: [
                  AnimatedContainer(
                    curve: Curves.easeInOut,
                    margin: focus? EdgeInsets.only(top: 10):EdgeInsets.zero,
                    clipBehavior: Clip.hardEdge,
                    width: focus? constraints.maxWidth-30:constraints.maxWidth,
                    height: focus? constraints.maxWidth-30:constraints.maxWidth*165/142,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(focus? (constraints.maxWidth-30)/2 : 0)),
                    duration: const Duration(milliseconds: 250),
                      child: AspectRatio(
                        aspectRatio: 142/165,
                        child: Image.asset(
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                          widget.img,
                        ),
                      ),
                    ),
                      const SizedBox(height: 3,),
                      Text(widget.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: constraints.maxWidth*0.1,
                            color: const Color.fromRGBO(22,39,64,1)
                        ),),
                      Text(widget.designation,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: constraints.maxWidth*0.09,
                            color: const Color.fromRGBO(22,39,64,1)
                        ),
                      )]
                ),
                  AnimatedPositioned(
                    curve: Curves.easeInOut,
                    bottom: focus ? 0 : -constraints.maxWidth*0.3,
                    child: IconButton(
                      icon: Icon(Icons.facebook,size: constraints.maxWidth*0.18,),
                      color:const Color.fromRGBO(22,39,64,1),
                      onPressed: () {},
                    ),
                    duration: Duration(milliseconds: 250)),
                  AnimatedPositioned(
                      curve: Curves.easeInOut,
                      left: focus? 10 : -constraints.maxWidth*0.3,
                      bottom: focus ? 0 : -constraints.maxWidth*0.3,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.linkedin,size: constraints.maxWidth*0.18,),
                        color:const Color.fromRGBO(22,39,64,1),
                        onPressed: () {},
                      ),
                      duration: Duration(milliseconds: 250)),
                  AnimatedPositioned(
                      curve: Curves.easeInOut,
                      right: focus? 10 : -constraints.maxWidth*0.3,
                      bottom: focus ? 0 : -constraints.maxWidth*0.3,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.instagram,size: constraints.maxWidth*0.18,),
                        color:const Color.fromRGBO(22,39,64,1),
                        onPressed: () {},
                      ),
                      duration: Duration(milliseconds: 250)),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

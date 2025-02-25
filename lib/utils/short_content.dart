import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortContent extends StatelessWidget {
  final int index;
  const ShortContent({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Center(
            child: Text(
              'Short ${index+1}',
              style: GoogleFonts.bebasNeue(fontSize: 30),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  Text('1.4M', style: TextStyle(fontSize: 10),),
                  SizedBox(height: 20,),
                  Icon(Icons.thumb_down_alt_outlined),
                  Text('Dislike', style: TextStyle(fontSize: 10),),
                  SizedBox(height: 20,),
                  Icon(Icons.comment_outlined),
                  Text('4,095', style: TextStyle(fontSize: 10),),
                  SizedBox(height: 20,),
                  Icon(Icons.ios_share),
                  Text('Share', style: TextStyle(fontSize: 10),),
                  SizedBox(height: 20,),
                  Icon(Icons.repeat),
                  Text('19K', style: TextStyle(fontSize: 10),),
                  SizedBox(height: 20,),
                  Icon(Icons.crop_square_rounded),
                  SizedBox(height: 5,),
                ],
              ),
            ),
          ),

          // video description column
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // channel details
                Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.person, ),),
                    SizedBox(width: 10,),
                    Text('@ThePlantiBoys'),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: (){}, child: Text('Subscribe'),
                    )
                  ],
                ),
                SizedBox(height: 7,),

                // video title
                Row(
                  children: [
                    Text(' He tells me when he is thirsty...'),
                  ],
                ),
                SizedBox(height: 7,),

                // song details
                Row(children: [
                  Icon(Icons.music_note_outlined, size: 14,),
                  SizedBox(width: 10,),
                  Text('School Rooftop (Bird Sounds)  hisohkah')
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class BriefCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            //title
/*             Container(
              color: Colors.black12,
              child: ListTile(                   
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),                
              ),
            ), */
            //media

            Container(
              constraints: BoxConstraints(minHeight: 250),
              color: Colors.white,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 240,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            /* image: 'https://cdn0-production-images-kly.akamaized.net/fU6DmE1EG4iMlKdfz890HnXs2Eg=/640x360/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2361377/original/073314400_1537242824-Mendagri_Tjahjo_1.jpg', */
                          ),
                        )
                      ],
                    ),
                  ),

                  //Category Icon
                  Positioned(
                    
                    height: 60.0,
                    bottom: -1.0,
                    child: _categoryIcon(),
                  ),
                ],
              ),
            ),


            //title
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text("Tjahjo Kumolo Siap Ditugaskan Tjahjo Kumolo Siap Ditugaskan",style: TextStyle(color: Colors.black54, fontSize: 16.0, fontWeight: FontWeight.w800),),
                        Padding(
                          padding: EdgeInsets.only(top:4.0,),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("inBrief by: Forbes", style: TextStyle(color: Colors.black45),),
                            Text(" | ", style: TextStyle(color: Colors.pink),),
                            Text("click to visit", style: TextStyle(color: Colors.black45),)
                          ],
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(),
            //content text 


            //action button
/*             ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () { },
                  ),
                  FlatButton(
                    child: const Text('LISTEN'),
                    onPressed: () { },
                  ),
                ],
              ),
            ), */

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Tim Kampanye Nasional Jokowi-Ma'ruf pada Pilpres 2019 telah didaftarkan ke KPU. Sederet nama menteri Kabinet Kerja Jokowi-JK masuk dalam daftar yang telah dirilis oleh KPU di laman resminya. Salah satunya Menteri Dalam Negeri Tjahjo Kumolo. Terkait hal itu, Tjahjo mengatakan belum tahu soal posisinya di TNK karena belum menerima surat keputusannya Tjahjo mengatakan belum tahu soal posisinya di TNK karena belum menerima surat keputusannya",
                      style: TextStyle(
                        fontSize: 15.0
                      ),
                    ),
                  )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }

  Widget _categoryIcon() {
    return SizedBox(
      width: 60.0,
      height: 60.0,
          child: ClipPolygon(
        sides: 6,
        borderRadius: 5.0, // Default 0.0 degrees
        rotate: 0.0, // Default 0.0 degrees
        boxShadows: [
          PolygonBoxShadow(color: Colors.black, elevation: 1.0),
          PolygonBoxShadow(color: Colors.grey, elevation: 1.0)
        ],
        child: Container(
          color: Colors.cyan[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                LineAwesomeIcons.newspaper_o,
                color: Colors.white70,
                size: 34.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

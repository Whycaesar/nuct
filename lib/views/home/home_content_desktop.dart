import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuct/widgets/home_details/home_details.dart';
import 'package:nuct/widgets/home_video/home_video.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            // NavigationBar(),

            Row(
              children: [
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: HomeDetails('TUAN TIGA BELAS @ Nuct Playground',
                      'Nuct - Acoustic Room is back again with something fresh! Collaborating with Tuantigabelas. Get ready for this specially crafted acoustic tunes.'),
                )),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: HomeVideo(title: 'videos/tuan_Tigabelas.mp4'))),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: HomeVideo(title: 'videos/generation69.mp4'))),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: HomeDetails('GENERATION 69 @ Nuct Playground',
                      'Acoustic Room - When distortion goes unplugged.'),
                )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: HomeDetails('JIMI MULTAZAM @ Nuct Playground',
                      'Acoustik Room episode spesial bersama Jimi Multhazam frontman The Upstairs yang terbentuk sejak tahun 2001. Hampir 2 dekade lebih Jimi dkk bertahan dalam band ini. Bongkar pasang personil, dll tapi akhirnya musik The Upstairs sama sekali tidak berubah sejak awal berdiri, tetap konstan dijalurnya.'),
                )),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: HomeVideo(title: 'videos/jimi_Multhazam.mp4'))),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: HomeVideo(title: 'videos/melanie_Subono.mp4'))),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: HomeDetails('MELANI SUBONO x LUKS @ Nuct Playground',
                      'Kali ini berkolaborasi bersama Buluk dari Superglad & Kausa. Yang versi aslinya, Melanie duet dengan Anda Perdana (Matajiwa) pada lagu "Dia Sahabat". Lagu Indonesia Jaya adalah lagu legendaris milik Alm. Chaken M yg di remake Melanie yang berduet dengan Buluk Superglad.'),
                )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: HomeDetails('USTARD CHIPENG @ Nuct Playground',
                      'NUCT - Acoustik Room spesial dari Ustard Chipeng, vokalis Begundal Lowokwaru, band street punk asal Malang yang genap berusia 22 tahun pada tahun ini. Soal eksistensi, konsistensi dan dedikasi, Chipeng bersama Begundal Lowokwaru tak perlu diragukan lagi.'),
                )),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: HomeVideo(title: 'videos/ustard_chipeng.mp4'),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.transparent,
                width: 0.25,
              ),
              bottom: BorderSide(
                color: Colors.black87,
                width: 0.25,
              ),
              top: BorderSide(
                color: Colors.black87,
                width: 0.25,
              ),
              right: BorderSide(
                color: Colors.transparent,
                width: 0.25,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Older Posts',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[1000],
                    fontWeight: FontWeight.w500,
                    // height: 3,
                    // backgroundColor: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_right_alt,
                size: 12,
                color: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }
}

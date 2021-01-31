import 'package:flutter/material.dart';
import 'package:nuct/widgets/portofolio_details/portofolio_details.dart';

class PortofolioViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PortofolioDetails(
          'assets/portofolio/beetle.jpg',
          'CIMB Niaga',
          'https://youtu.be/EYU2t0gaAd0',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/clouds.jpg',
          'CIMB Niaga',
          'https://youtu.be/fVDK5ScvKD0',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/keppel.jpg',
          'Keppel Land Indonesia',
          'https://youtu.be/3VSdGOEbVqI?list=PLprmKu4mjhbtEVPj7tTtkDIrb6KWULJlo',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/liberty.jpg',
          'CIMB Niaga',
          'https://youtu.be/RMUTRzUO9xA',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/lighthouse.jpg',
          'Telkomsel',
          'https://youtu.be/SLX6quwnbJw',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/niaga3.jpg',
          'CIMB Niaga',
          'https://youtu.be/lDsMoat_1yo?list=PLprmKu4mjhbtEVPj7tTtkDIrb6KWULJlo',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/niaga4.jpg',
          'CIMB Niaga',
          'https://youtu.be/mXYdo90vEp4?list=PLprmKu4mjhbtEVPj7tTtkDIrb6KWULJlo',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/ocbc.jpg',
          'OCBC Bank',
          'https://youtu.be/4Fhbz3pPtxI',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/salad.jpg',
          'Theragan',
          'https://youtu.be/hI9aLlS9pWk',
        ),
        SizedBox(
          height: 10,
        ),
        PortofolioDetails(
          'assets/portofolio/shutterbug.jpg',
          'Telkom Indonesia',
          'https://youtu.be/1i47BGx_mcI',
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

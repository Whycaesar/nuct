import 'package:flutter/material.dart';
import 'package:nuct/widgets/portofolio_details/portofolio_details.dart';

class PortofolioViewTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width * 0.3 - 70,
          // height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      // height: MediaQuery.of(context).size.height * 0.55,
                      child: PortofolioDetails(
                        'assets/portofolio/beetle.jpg',
                        'CIMB Niaga',
                        'https://youtu.be/EYU2t0gaAd0',
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      child: PortofolioDetails(
                        'assets/portofolio/clouds.jpg',
                        'CIMB Niaga',
                        'https://youtu.be/fVDK5ScvKD0',
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                    child: PortofolioDetails(
                      'assets/portofolio/keppel.jpg',
                      'Keppel Land Indonesia',
                      'https://youtu.be/3VSdGOEbVqI?list=PLprmKu4mjhbtEVPj7tTtkDIrb6KWULJlo',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      child: PortofolioDetails(
                        'assets/portofolio/liberty.jpg',
                        'CIMB Niaga',
                        'https://youtu.be/RMUTRzUO9xA',
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      child: PortofolioDetails(
                        'assets/portofolio/lighthouse.jpg',
                        'Telkomsel',
                        'https://youtu.be/SLX6quwnbJw',
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      child: PortofolioDetails(
                        'assets/portofolio/niaga3.jpg',
                        'CIMB Niaga',
                        'https://youtu.be/lDsMoat_1yo?list=PLprmKu4mjhbtEVPj7tTtkDIrb6KWULJlo',
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      child: PortofolioDetails(
                        'assets/portofolio/niaga4.jpg',
                        'CIMB Niaga',
                        'https://youtu.be/mXYdo90vEp4?list=PLprmKu4mjhbtEVPj7tTtkDIrb6KWULJlo',
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      child: PortofolioDetails(
                        'assets/portofolio/ocbc.jpg',
                        'OCBC Bank',
                        'https://youtu.be/4Fhbz3pPtxI',
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                      child: PortofolioDetails(
                        'assets/portofolio/salad.jpg',
                        'Theragan',
                        'https://youtu.be/hI9aLlS9pWk',
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                    child: PortofolioDetails(
                      'assets/portofolio/shutterbug.jpg',
                      'Telkom Indonesia',
                      'https://youtu.be/1i47BGx_mcI',
                    ),
                  ),
                  // Container(
                  //     width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                  //     child: PortofolioDetails(
                  //         'assets/portofolio/niaga4.jpg', 'CIMB Niaga')),
                  // Container(
                  //     width: MediaQuery.of(context).size.width * 1 / 3 - 70,
                  //     child: PortofolioDetails(
                  //         'assets/portofolio/niaga4.jpg', 'CIMB Niaga')),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ],
    );
  }
}

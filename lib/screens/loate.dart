import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:google_fonts/google_fonts.dart';


class Locate extends StatefulWidget {
  const Locate({super.key});

  @override
  State<Locate> createState() => _LocateState();
}

class _LocateState extends State<Locate> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Wallet Location',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: GoogleFonts.arimaMadurai().fontFamily,
              fontWeight: FontWeight.w700,
            ),
          ),
         Container(
          width: double.infinity - 20,
          height: 400,
           child: FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(35.6324, 10.8960),
              initialZoom: 17,
            ),
            children: [
              TileLayer(
                urlTemplate: 'http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
                        subdomains: ['mt0', 'mt1', 'mt2', 'mt3'],
              ),
            ],
             
              
              ),
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(13)),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xCC30D5C8)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)))
                ),
                  onPressed: () {
                  
                  },
                  child: Text(
                    'Lock Wallet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Arima Madurai',
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  SizedBox(width: 10,),
                   TextButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(13)),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF7945FF)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)))
                ),
                  onPressed: () {},
                  child: Text(
                    'Report Wallet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'Arima Madurai',
                      fontWeight: FontWeight.w700,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
 

}

  
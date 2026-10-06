import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: (){}, 
          style:ElevatedButton.styleFrom(
            backgroundColor:Color(0xff024383),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )
          ),
          child: Text("Available Hotels",style:TextStyle(
            fontSize: 16,
            fontWeight:FontWeight.w700,
            color: Colors.white,
          ))),
        Row(
          spacing: 8,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset('assets/images/Frame 5.png')
                  
                ],
              ),
            ),
          Expanded(
            child: Stack(
                children: [
                  
                  Image.asset('assets/images/Frame 5 (1).png')
                ],
              ),
          )
          ],
        )
        ],
      ),
    ),
)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    );
  }
}
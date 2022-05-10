
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage("https://scontent.fcai1-3.fna.fbcdn.net/v/t39.30808-6/274727380_4811651398932273_6279325119558403405_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHv6dCQSGbuEiHFqOBsXHTVzyE6HmIr9qHPIToeYiv2obTQ8fT-xslbZeYxbnMl-xJON9sWSB9Yjh0TW8NplkrO&_nc_ohc=QniUOX9lWUgAX9CtcXV&_nc_ht=scontent.fcai1-3.fna&oh=00_AT9IbBrzO5-eav14ubM7NYNGl_De40UXJ6UKlhZfREIVlQ&oe=6230A2BD"),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 0.7,
                    end: 0.7,
                  ),
                  child: CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.green,
                  ),
                ),

              ],
            ),
            SizedBox(
              width: 20.0,
            ),
            Text("Chats",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,

            ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                  radius: 20.0,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.camera_alt_rounded,
                    size: 18,
                  )
              )
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 20.0,
                foregroundColor: Colors.black,
                backgroundColor: Colors.grey[300],
                  child: Icon(Icons.edit,
                    size: 18.0,
                  )
              ),
          ),
        ],
        
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              padding: EdgeInsets.all(5.0,),
              decoration:
              BoxDecoration(
                         color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0),
              ),
               child: Row(
                 children: [
                   Icon(Icons.search,
                   size: 18.0,
                     color: Colors.grey,
                   ),
                   SizedBox(
                     width: 15.0 ,
                   ),
                   Text('Search',
                   style: TextStyle(
                     color: Colors.grey,
                   ),
                   ),
                 ],
               ),
             ),
              SizedBox(
                 height: 20.0,
               ),
              Container(
                  height: 100.0,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder:  (context, index) =>SizedBox(
                      width: 20.0,
                    ),
                    itemCount: 10,
                  ),
                ),
              SizedBox(
          height: 20.0,
      ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=>   SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 10,
              )],
          ),
        ),


      ),

    );
  }

  Widget  buildChatItem()=> Row(
   children: [
     Stack(
       alignment: AlignmentDirectional.bottomEnd,
       children: [
         CircleAvatar(
           radius: 30.0,
           backgroundImage:
           NetworkImage("https://scontent.fcai1-3.fna.fbcdn.net/v/t39.30808-6/274372452_968420827212347_659577135935715430_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFgdjOQzD8fy47OS-T3pblaJgvVRVNzcT0mC9VFU3NxPcwtBpJGchghytragKu1tKB-x3yjaKMjtrA-xDV7IDcv&_nc_ohc=orQhf-k_ItcAX8TtB2c&_nc_ht=scontent.fcai1-3.fna&oh=00_AT-f6AV4HeaTsmY8WhPVaEkg4E1LANI6fSaj5k56G18OHQ&oe=623011BB"),
         ),

         Padding(
           padding: const EdgeInsetsDirectional.only(
             bottom: 0.5,
             end: 0.5,
           ),
           child: CircleAvatar(
             radius: 7.0,
             backgroundColor: Colors.green,
           ),
         ),
       ],
     ),
     SizedBox(
       width: 10.0,
     ),
     Expanded(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             "My Bea ",

             maxLines: 1,
             overflow: TextOverflow.ellipsis,
             style: TextStyle(
               fontSize: 16.0,
               fontWeight:FontWeight.bold ,
             ),
           ),
           SizedBox(height: 5.0,),
           Row(
             children: [
               Expanded(
                 child: Text(
                   "hi ziad whats going on?  hi ziad whats going on?hi ziad whats going on?hi ziad whats going on?",
                   maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                   style: TextStyle(
                     fontSize: 15.0,
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                 child: Container(
                   width:10.0,
                   height: 10.0,
                   decoration: BoxDecoration(
                     color: Colors.blue,
                     shape: BoxShape.circle,
                   ),
                 ),
               ),
               Text("3:00 PM"),
             ],
           ),
           SizedBox(height: 20.0,),
         ],
       ),
     ),


   ],
 );

   Widget buildStoryItem()=>  Container(
     width: 60.0,
     child: Column(

       children: [
         Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children: [
             CircleAvatar(
               radius: 30.0,
               backgroundImage:
               NetworkImage("https://scontent.fcai1-3.fna.fbcdn.net/v/t39.30808-6/274372452_968420827212347_659577135935715430_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFgdjOQzD8fy47OS-T3pblaJgvVRVNzcT0mC9VFU3NxPcwtBpJGchghytragKu1tKB-x3yjaKMjtrA-xDV7IDcv&_nc_ohc=orQhf-k_ItcAX8TtB2c&_nc_ht=scontent.fcai1-3.fna&oh=00_AT-f6AV4HeaTsmY8WhPVaEkg4E1LANI6fSaj5k56G18OHQ&oe=623011BB"),
             ),

             Padding(
               padding: const EdgeInsetsDirectional.only(
                 bottom: 0.5,
                 end: 0.5,
               ),
               child: CircleAvatar(
                 radius: 7.0,
                 backgroundColor: Colors.green,
               ),
             ),
           ],
         ),
         SizedBox(
           height: 5.0,
         ),
         Text(
           "MY BAE",
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           style: TextStyle(
             fontSize: 10.0,
             fontWeight: FontWeight.bold,
           ),
         ),


       ],
     ),
   );

}

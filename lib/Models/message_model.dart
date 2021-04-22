import 'package:myapp/Models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - Current User
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: '',
);

// Users
final User saksi = User(
  id: 1,
  name: 'Saksi',
  imageUrl: '',
);

final User anurag = User(
  id: 2,
  name: 'Anurag',
  imageUrl: '',
);

final User vishesh = User(
  id: 3,
  name: 'Vishesh',
  imageUrl: '',
);

final User jahnavi = User(
  id: 4,
  name: 'Jahnavi',
  imageUrl: '',
);

final User amay = User(
  id: 5,
  name: 'Amay',
  imageUrl: '',
);

final User mujtaba = User(
  id: 6,
  name: 'Mujtaba',
  imageUrl: '',
);

final User saksham = User(
  id: 7,
  name: 'Saksham',
  imageUrl: '',
);

//Favorite contacts
List<User> favorites = [
  anurag,
  saksi,
  vishesh,
  jahnavi,
  mujtaba,
  saksham,
  amay
];

// Example chats on homescreen
List<Message> chats = [
  Message(
    sender: vishesh,
    time: '1:32 AM',
    text: "Ah..Nice ! I completed episode 1 yesterday",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: saksi,
    time: '1:30 AM',
    text: "I'm playing valorant",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: anurag,
    time: '1:31 AM',
    text: "Okaie...I was watching Bridgerton",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: jahnavi,
    time: '1:32 AM',
    text: "Oh..nice nice",
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: saksi,
    time: '1:33 AM',
    text: "Okay then gotta go ...I'm in game....GSTKB",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: anurag,
    time: '1:33 AM',
    text: "Yea..GSTKB",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: saksi,
    time: '1:33 AM',
    text: "yup cool",
    isLiked: true,
    unread: true,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: saksi,
    time: '5:30 PM',
    text: "I'm playing valorant",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Okaie...I was watching Bridgerton',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: saksi,
    time: '3:45 PM',
    text: 'Ah..Nice ! I completed episode 1 yesterday',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: saksi,
    time: '3:15 PM',
    text: "Okay then gotta go ...I'm in game....GSTKB",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Yea..GSTKB',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: saksi,
    time: '2:00 PM',
    text: 'yup cool',
    isLiked: false,
    unread: true,
  ),
];

class ChatData {
  String profileImage;
  String name;
  String lastMessage;
  String messageTime;
  int messageCount;
  bool isLastMessageSeen;
  bool isMessageTyping;

  ChatData({
    required this.profileImage,
    required this.name,
    required this.lastMessage,
    required this.messageTime,
    this.messageCount = 0,
    this.isLastMessageSeen = false,
    this.isMessageTyping = false,
  });
}

List<ChatData> chatList = [
  ChatData(
    profileImage:
        'https://media.istockphoto.com/vectors/weekend-loading-vector-illustration-on-white-background-vector-id961483346',
    name: 'Weekend',
    lastMessage: 'Sofia: Striker',
    messageTime: '9:49',
    messageCount: 2,
  ),
  ChatData(
    profileImage:
        'https://superleaguetriathlon.com/wp-content/uploads/MEN_PereiraJoao.jpg',
    name: 'Joao Pereira',
    lastMessage: 'typing...',
    messageTime: '9:45',
    isMessageTyping: true,
  ),
  ChatData(
    profileImage:
        'https://i.pinimg.com/736x/4b/66/f6/4b66f64ebc5b1e17992af1bae63cc919.jpg',
    name: 'Isabelle van Rijn',
    lastMessage: 'Best breakfast ever',
    messageTime: '9:37',
  ),
  ChatData(
    profileImage:
        'https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/family-of-four-7101-a234e9249b2c7223d4e4d8cd9432f9e9@1x.jpg',
    name: 'Family',
    lastMessage: 'Mom: She is cute',
    messageTime: '9:09',
  ),
  ChatData(
    profileImage:
        'https://assets.weforum.org/sf_account/image/VNo2jtS2YwUfpyMSnGl6Kj_9MBU2HBCtQ9T1mI2tjf8.jpg',
    name: 'Alicia Garcia',
    lastMessage: 'It was so great to se you! Let\'s...',
    messageTime: '8:58',
    isLastMessageSeen: true,
  ),
  ChatData(
    profileImage:
        'https://i.pinimg.com/originals/00/cb/c4/00cbc4a3806f0559cbd6f2cb94aee157.jpg',
    name: 'Lunch club',
    lastMessage: 'Dominic Scwarz: GIF',
    messageTime: '8:33',
  ),
  ChatData(
    profileImage:
        'http://cdn.shopify.com/s/files/1/0549/0756/8344/products/Choco.-Vanilla-Cake-1kg.jpg?v=1649586651',
    name: 'Sandra\'s Cakes',
    lastMessage: 'It will be ready on Thursday!',
    messageTime: '7:45',
  ),
  ChatData(
    profileImage:
        'https://media.istockphoto.com/vectors/weekend-loading-vector-illustration-on-white-background-vector-id961483346',
    name: 'Weekend',
    lastMessage: 'Sofia: Striker',
    messageTime: '9:49',
  ),
  ChatData(
    profileImage:
        'https://superleaguetriathlon.com/wp-content/uploads/MEN_PereiraJoao.jpg',
    name: 'Joao Pereira',
    lastMessage: 'typing...',
    messageTime: '9:45',
    isMessageTyping: true,
  ),
  ChatData(
    profileImage:
        'https://i.pinimg.com/736x/4b/66/f6/4b66f64ebc5b1e17992af1bae63cc919.jpg',
    name: 'Isabelle van Rijn',
    lastMessage: 'Best breakfast ever',
    messageTime: '9:37',
  ),
  ChatData(
    profileImage:
        'https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/family-of-four-7101-a234e9249b2c7223d4e4d8cd9432f9e9@1x.jpg',
    name: 'Family',
    lastMessage: 'Mom: She is cute',
    messageTime: '9:09',
  ),
  ChatData(
    profileImage:
        'https://assets.weforum.org/sf_account/image/VNo2jtS2YwUfpyMSnGl6Kj_9MBU2HBCtQ9T1mI2tjf8.jpg',
    name: 'Alicia Garcia',
    lastMessage: 'It was so great to se you! Let\'s...',
    messageTime: '8:58',
    isLastMessageSeen: true,
  ),
  ChatData(
    profileImage:
        'https://i.pinimg.com/originals/00/cb/c4/00cbc4a3806f0559cbd6f2cb94aee157.jpg',
    name: 'Lunch club',
    lastMessage: 'Dominic Scwarz: GIF',
    messageTime: '8:33',
  ),
  ChatData(
    profileImage:
        'http://cdn.shopify.com/s/files/1/0549/0756/8344/products/Choco.-Vanilla-Cake-1kg.jpg?v=1649586651',
    name: 'Sandra\'s Cakes',
    lastMessage: 'It will be ready on Thursday!',
    messageTime: '7:45',
  ),
];

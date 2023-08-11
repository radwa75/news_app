
class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  //let's create the constructor
  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  static List<NewsData> updatesNewsData = [
    NewsData(
        "الممثل كنان إميرزالي أوغلو يعود لدراما التركية",
        "كنان إميرزالي",
        "جاء الخبر السعيد لعشاق الدراما التركية وهي عودة الفنان كنان إميرزالي أوغلو إلى الشاشية مرة أخرى، فسوف يعود بمسلسل جديد من إخراج  يافوز تورغول - Yavuz Turgul، الذي أنتج أفلامًا مثل Bandit و Gönül Yarası",
        "2023-08-8",
        "https://layalina.awicdn.com/site-images/sites/default/files/prod/article/4/d/600008/7da1b601b700f011a1c2fd038204fd120dc31802-070823214244.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215&croptop=1"),
    NewsData(
        "صابر الرباعي يعلق على أنباء اشتباكه بالأيدي مع وائل جسار",
        "صابر الرباعي",
        "مفيش مشاكل بيني وبين وائل جسار خالص، والأخبار المنتشرة ليس لها أي علاقة بالواقع",
        "2022-08-8",
        "https://layalina.awicdn.com/site-images/sites/default/files/prod/article/d/3/599849/2d33aa4a584d8e1e047bb7afdf08f673075fe9b7-070823062135.png?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215&croptop=1"),
    NewsData(
        "داليدا خليل تحسم جدل علاقتها بعمرو دياب",
        "عمرو دياب",
        "ونفت داليدا خليل الشائعات المتداولة حول علاقتها بعمرو دياب مؤكدة أنه ليس من الممكن أن تكون هناك قصة حب بسبب صورة مع الهضبة واصفة تعليقات الجمهور على صورتهما بمهضومه.",
        "2022-08-11",
        "https://layalina.awicdn.com/site-images/sites/default/files/prod/article/1/d/599832/4885dd6181b9f916635bb3641619ed12526dbe09-070823051328.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215&croptop=1"),
    NewsData(
        "U.S. Gas Prices Fall Below \$4 a Gallon, AAA Says - The New York Times",
        "Isabella Simonetti",
        "After peaking in June, they are back where they were in March, offering some relief to consumers and policymakers amid inflation worries.",
        "2023-08-11",
        "https://cdn.mosoah.com/wp-content/uploads/2020/02/18114738/%D9%85%D8%B4%D8%A7%D9%87%D9%8A%D8%B1-%D8%A7%D8%AC%D8%A7%D9%86%D8%A8-825x510.jpg"),
    NewsData(
        "BYD Is Taking Electric Vehicles To The World!",
        "Remeredzai Joseph Kuhudzai",
        "There was quite a bit of drama on several forums following reports in various media platforms around the world that BYD has overtaken Telsa to become the top-selling EV company. In fact, there was quite a bit of an uproar from some circles that felt that it w…",
        "2022-08-11",
        "https://cleantechnica.com/files/2022/05/BYD-Atto-3.jpeg"),
    NewsData(
        "Unexpected storms diverted 100 American Airlines flights and sparked hundreds of cancellations",
        "Marnie Hunter",
        "Severe thunderstorms around Dallas-Fort Worth International Airport on Wednesday caused 100 American Airlines flight diversions and led to hundreds of cancellations that extended into Thursday's schedule.",
        "2022-08-11",
        "https://cdn.cnn.com/cnnnext/dam/assets/220811123809-dfw-american-airlines-file-restricted-super-tease.jpg"),
  ];
  //we will use dummy data to generate the news,but you can use a third party api or your own backend to extract the data
  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data
  static List<NewsData> breakingNewsData = [
    NewsData(
        "U.S. Gas Prices Fall Below \$4 a Gallon, AAA Says - The New York Times",
        "Isabella Simonetti",
        "After peaking in June, they are back where they were in March, offering some relief to consumers and policymakers amid inflation worries.",
        "2023-08-11",
        "https://cdn.mosoah.com/wp-content/uploads/2020/02/18114738/%D9%85%D8%B4%D8%A7%D9%87%D9%8A%D8%B1-%D8%A7%D8%AC%D8%A7%D9%86%D8%A8-825x510.jpg"),
    NewsData(
        "BYD Is Taking Electric Vehicles To The World!",
        "Remeredzai Joseph Kuhudzai",
        "There was quite a bit of drama on several forums following reports in various media platforms around the world that BYD has overtaken Telsa to become the top-selling EV company. In fact, there was quite a bit of an uproar from some circles that felt that it w…",
        "2022-08-11",
        "https://cleantechnica.com/files/2022/05/BYD-Atto-3.jpeg"),
    NewsData(
        "Unexpected storms diverted 100 American Airlines flights and sparked hundreds of cancellations",
        "Marnie Hunter",
        "Severe thunderstorms around Dallas-Fort Worth International Airport on Wednesday caused 100 American Airlines flight diversions and led to hundreds of cancellations that extended into Thursday's schedule.",
        "2022-08-11",
        "https://cdn.cnn.com/cnnnext/dam/assets/220811123809-dfw-american-airlines-file-restricted-super-tease.jpg"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "Teens have abandoned Facebook, Pew study says",
        "Amanda Silberling",
        "Gen Z internet use is on the rise, but the rate at which teens use Facebook is rapidly declining. A Pew Research Center study on teens, technology and social media found that only 32% of teens aged",
        "2022-08-11",
        "https://techcrunch.com/wp-content/uploads/2022/08/fb-exit-2022.jpg?w=711"),
    NewsData(
        "Fox-owned Tubi expands its free streaming service to five Latin American countries",
        "Lauren Forristal",
        "Tubi, the free ad-supported streaming service owned by Fox, is now available in Costa Rica, Ecuador, El Salvador, Guatemala, and Panama — an expansion that has doubled its global footprint and signals the company's interest in capturing more Latin American",
        "2022-08-11",
        "https://techcrunch.com/wp-content/uploads/2022/05/cross-device_wave.png?w=711"),
    NewsData(
        "Massive iron batteries could be key to displacing natural gas from the grid",
        "Tim De Chant",
        "VoltStorage recently raised a Series C worth \$24 million from engine manufacturer Cummins. Its previous rounds included investments from SOSV and EIT InnoEnergy.",
        "2022-08-11",
        "https://techcrunch.com/wp-content/uploads/2022/08/electrical-grid-at-night.jpg?w=600"),
    NewsData(
        "Mark Cuban, Mavericks in hot water over Voyager \"Ponzi scheme\"",
        "Anita Ramaswamy",
        "The class-action lawsuit alleges that Cuban's promotion of now-bankrupt crypto firm Voyager cost investors \$5 billion",
        "2022-08-11",
        "https://techcrunch.com/wp-content/uploads/2016/02/54816c7904ab43c9af6a09d12d936b0e.jpg?w=600"),
  ];
}

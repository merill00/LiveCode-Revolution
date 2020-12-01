package cardObjects {

	[Bindable]
	public class Card {
		public var catID:Number;
		public var cardID:Number;
		public var frenchName:String;
		public var englishName:String;
		public var frequency:Number;
		public var description:String;
		public var imageFile:String;

		public function Card (catID:Number, cardID:Number, frenchName:String, englishName:String, imageFile:String, frequency:Number=1, description:String="n/a"){
			this.catID = catID;
			this.cardID = cardID;
			this.frenchName = frenchName;
			this.englishName = englishName;
			this.frequency = frequency;
			this.description = description;
			this.imageFile = imageFile;
		}

		public function toString():String{
			return "[Card]"+this.frenchName;
		}

		public static function buildCard(o:Object):Card{
			var c:Card = new Card(o.catID, o.cardID, o.frenchName, o.englishName, o.imageFile, o.frequency, o.description);
			
			return c;
		}
	}
}
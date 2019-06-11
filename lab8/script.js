var array = {'Старый':2800, 'Жека':2000, 'Виталя':1500,"Саня":1000, 'Ковач':2900};
var jsonText = '{ "employees" : [' +
'{ "firstName":"Vlad" , "lastName":"Kovach" },' +
'{ "firstName":"Dennis" , "lastName":"Starij" },' +
'{ "firstName":"Vitalya" , "lastName":"Vitya" } ]}';

var user = {
	name: "Саня",
	age: 18,
};

var text = JSON.parse(jsonText);
//alert(text[0]);
alert(JSON.stingify(user,["name","age"]) );
class Order{
  String id,quantity,price,month,hour,date;

  Order({
    this.price = "",
    this.quantity = "",
    this.id = "",
    this.date = "",
    this.hour = "",
    this.month = "",
});

}
var pendingOrdersList = [
  Order(price: "26.5",date:"11" ,hour: "10:20 am",id: "013481",month:"Aug" ,quantity: "3"),
  Order(price: "22.5",date:"12" ,hour: "09:30 am",id: "013482",month:"Aug" ,quantity: "12"),
];

var ordersList = [
  Order(price: "26.5",date:"11" ,hour: "10:20 am",id: "013481",month:"Aug" ,quantity: "3"),
  Order(price: "22.5",date:"12" ,hour: "09:30 am",id: "013482",month:"Aug" ,quantity: "12"),
  Order(price: "19.99",date:"16" ,hour: "01:30 am",id: "023281",month:"Aug" ,quantity: "1"),
  Order(price: "20.99",date:"15" ,hour: "10:30 am",id: "023181",month:"Aug" ,quantity: "2"),
  Order(price: "22.5",date:"16" ,hour: "11:30 am",id: "023483",month:"Aug" ,quantity: "3"),
  Order(price: "19.99",date:"16" ,hour: "01:30 am",id: "023281",month:"Aug" ,quantity: "1"),
  Order(price: "19.99",date:"16" ,hour: "01:30 am",id: "023281",month:"Aug" ,quantity: "1"),
];
class Order {
  final String name;
  final int quantity;
  final String recieverName;
  final String type;
  final bool isAccepted;
  final bool isPending;
  final bool isDone;

  Order(
    this.name,
    this.quantity,
    this.recieverName,
    this.type,
    this.isAccepted,
    this.isPending,
    this.isDone,
  );
}

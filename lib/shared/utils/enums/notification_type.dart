enum NotificationType {
  /// Represents notifications indicating that a user's submitted offer
  /// has been accepted.
  offerAccepted,
  
  /// Represents notifications indicating that a user's submitted offer
  /// has been rejected.
  offerRejected,

  /// Represents notifications about offers made by other users on items
  /// owned by the current user.
  receivedOffer,

  /// Represents notifications that fall outside the predefined categories
  /// (e.g., system updates, general alerts).
  other,
}

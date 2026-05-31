import 'package:motobites/core/constants/legal_strings.dart';

class AppStrings {
  AppStrings._();

  static const String appName = 'Motobites';

  static const String splashBrand = 'Motobites';
  static const String splashTagline = 'FAST\nAFFORDABLE\nDELICIOUS';

  static const String splashTaglineLine1 = 'FAST';
  static const String splashTaglineLine2 = 'AFFORDABLE';
  static const String splashTaglineLine3 = 'DELICIOUS';

  // Onboarding
  static const String onboardingTitle1 = 'Affordable Meals';
  static const String onboardingDesc1 =
      'Satisfy your cravings with delicious meals at wallet friendly prices';

  static const String onboardingTitle2 = 'Fast Delivery';
  static const String onboardingDesc2 =
      'For your affordable food, groceries and other services. Empower yourself with Access to Anything, Anywhere, Anytime.';

  static const String onboardingTitle3 = 'Delicious Meals';
  static const String onboardingDesc3 =
      'Savor the flavour with our wide range of delicious dishes at your fingertips';

  static const String signUp = 'Sign up';
  static const String logIn = 'Log In';
  static const String continueAsGuest = 'Continue as guest';

  static const OnboardingStrings onboarding = OnboardingStrings();
  static const AuthStrings auth = AuthStrings();
  static const AddressStrings addresses = AddressStrings();
  static const PromoStrings promos = PromoStrings();
  static const HomeStrings home = HomeStrings();
  static const KitchenStrings kitchen = KitchenStrings();
  static const CartStrings cart = CartStrings();
  static const CheckoutStrings checkout = CheckoutStrings();
  static const DealsStrings deals = DealsStrings();
  static const InvoiceStrings invoices = InvoiceStrings();
  static const ProfileStrings profile = ProfileStrings();
  static const OrderStrings orders = OrderStrings();
  static const MainNavStrings mainNav = MainNavStrings();
  static const RewardsStrings rewards = RewardsStrings();
  static const LegalStrings legal = LegalStrings.instance;
  static const SecurityStrings security = SecurityStrings();
  static const FavoritesStrings favorites = FavoritesStrings();
  static const HelpCenterStrings helpCenter = HelpCenterStrings();
  static const NotificationStrings notifications = NotificationStrings();
}

class MainNavStrings {
  const MainNavStrings();

  String get home => 'Home';
  String get orders => 'Orders';
  String get deals => 'Deals';
  String get rewards => 'Rewards';
  String get profile => 'Profile';
  String get dealsPlaceholder => 'Deals Screen Placeholder';
  String get rewardsPlaceholder => 'Rewards Screen Placeholder';
  String get profilePlaceholder => 'Profile Screen Placeholder';
}

class AuthStrings {
  const AuthStrings();

  SignUpStrings get signUp => const SignUpStrings();
  AccountCreatedStrings get accountCreated => const AccountCreatedStrings();
  LoginStrings get login => const LoginStrings();
  OtpStrings get otp => const OtpStrings();
  AuthErrorStrings get errors => const AuthErrorStrings();

  String get continueAsGuest => 'Continue as guest';
  String get chatWithSupport => 'Chat with support';
  String get orLabel => 'OR';
}

class LoginStrings {
  const LoginStrings();

  String get title => 'Welcome back';
  String get subtitle => "Let's get you back into your account.";
  String get phoneLabel => 'Phone Number';
  String get phoneHint => '08110986238';
  String get logIn => 'Log In';
  String get notYetUserPrefix => 'Not yet a user? ';
  String get register => 'Register';
}

class OtpStrings {
  const OtpStrings();

  String get title => 'Verify Phone Number';
  String get codePrefix => "We've sent a 4-digit code to ";
  String get codeVia => ' via ';
  String get codeViaSms => 'SMS';
  String get codeAnd => ' and ';
  String get codeViaWhatsapp => 'Whatsapp';
  String get proceed => 'Proceed';
  String get resendCode => 'Resend Code';
  String get expired => 'OTP expired. Please resend the code.';
}

class AuthErrorStrings {
  const AuthErrorStrings();

  String get emailRequired => 'Email is required';
  String get emailInvalid => 'Enter a valid email address';

  String get passwordRequired => 'Password is required';
  String get passwordLength => 'Password must be at least 8 characters';
  String get passwordUppercase =>
      'Password must include at least one uppercase letter';
  String get passwordLowercase =>
      'Password must include at least one lowercase letter';
  String get passwordDigit => 'Password must include at least one number';
  String get passwordSpecial =>
      r'Password must include at least one special character (!@#$%^&*)';
  String get confirmPasswordRequired => 'Please confirm your password';
  String get passwordMismatch => 'Passwords do not match';

  String get nameRequired => 'Name is required';
  String get fullNameRequired => 'Please enter your full name';
  String get nameInvalid => "Name may only contain letters, spaces, ' and -";

  String get phoneRequired => 'Phone number is required';
  String get phoneInvalid => 'Enter a valid phone number';

  String get otpRequired => 'Enter the verification code';
  String get otpInvalid => 'Enter a valid 4-digit code';
}

class AccountCreatedStrings {
  const AccountCreatedStrings();

  String get title => 'Account created!';
  String get legalPrefix => 'By clicking continue, I agree to the ';
  String get termsAndConditions => 'Terms and Condition';
  String get legalMiddle => ' and acknowledge ';
  String get privacyPolicy => 'Privacy policy';
  String get continueLabel => 'Continue';
}

class SignUpStrings {
  const SignUpStrings();

  String get title => 'Get started';
  String get subtitle =>
      'Welcome to Motobites. We need some of your details to get started.';
  String get fullNameLabel => 'Full name';
  String get fullNameHint => 'Funke Folowosele';
  String get phoneLabel => 'Phone number';
  String get phoneHint => '08110986238';
  String get emailLabel => 'Email address';
  String get emailHint => 'folowoselefunkevictoria@gmail.com';
  String get referralCodeLabel => 'Referral code';
  String get referralCodeHint => '123456';
  String get proceed => 'Proceed';
  String get alreadyUserPrefix => 'Already a user? ';
  String get logIn => 'Log in';
}

class AddressStrings {
  const AddressStrings();

  String get myAddressesTitle => 'My Addresses';
  String get addNewAddress => 'Add new address';
  String get addAddressSheetTitle => 'Add new address';
  String get editAddressSheetTitle => 'Edit address';
  String get addAddressSearchHint => 'William Berry Close';
  String get editAddressSearchHint => 'Search for area, street name...';
  String get addressTagLabel => 'Address tag';
  String get saveAddress => 'Save address';
  String get edit => 'Edit';
  String get tagHome => 'Home';
  String get tagWork => 'Work';
  String get tagOther => 'Other';
  String get emptyTitle => 'No addresses saved yet';
  String get emptySubtitle =>
      'Add your home, office, or frequent locations to enjoy faster checkout experiences on your food orders.';
  String get useCurrentLocation => 'Use my current location';
  String get locatingLabel => 'Locating…';
  String get saveFailed => "Couldn't save address. Please try again.";
  String get deleteFailed => "Couldn't delete address. Please try again.";
  String get loadFailedTitle => "Couldn't load addresses";
  String get landmarkLabel => 'Landmark / delivery instructions';
  String get landmarkHint =>
      'e.g. Behind GTBank, opposite 2KTV gate, ask for "Funke"';
  String get landmarkHelper =>
      'Adding a landmark helps riders find you when the street address is hard to pin down.';

  AddressErrorStrings get errors => const AddressErrorStrings();
}

class AddressErrorStrings {
  const AddressErrorStrings();

  String get required => 'Address is required';
  String get invalid =>
      'Enter a valid address (e.g. 23, Mac Donald Rd, Ikoyi, Lagos)';
}

class PromoStrings {
  const PromoStrings();

  String get title => 'Promos & Credits';
  String get havePromoCode => 'Have a promo code?';
  String get promoCodeHint => 'Enter code (e.g BITES26)';
  String get apply => 'Apply';
  String get yourVouchers => 'Your vouchers';
  String get appliedSuccess => 'Promo code applied successfully';
  String get appliedInvalid => 'This promo code is not valid';
  String expiresInDays(int days) =>
      days == 1 ? 'Expires in 1 day' : 'Expires in $days days';
  String get emptyTitle => 'No vouchers available';
  String get emptySubtitle =>
      "You don't have any active coupons or discount tokens at the moment.";

  PromoErrorStrings get errors => const PromoErrorStrings();
}

class PromoErrorStrings {
  const PromoErrorStrings();

  String get required => 'Enter a promo code';
  String get invalid => 'Enter a valid code (e.g. BITES26)';
}

class OnboardingStrings {
  const OnboardingStrings();

  String get pageOneTitle => 'Affordable Meals';
  String get pageOneSubtitle =>
      'Satisfy your carvings with delicious meals at wallet friendly prices';

  String get pageTwoTitle => 'Fast Delivery';
  String get pageTwoSubtitle =>
      'For your affordable food, groceries and other services, Empower yourself with Access to Anything, Anywhere, Anytime.';

  String get pageThreeTitle => 'Delicious Meals';
  String get pageThreeSubtitle =>
      'Savor the flavour with our wide range of delicious dishes at your fingertips';

  String get signUpLabel => 'Sign up';
  String get logInLabel => 'Log In';
  String get continueAsGuestLabel => 'Continue as guest';
}

class HomeStrings {
  const HomeStrings();

  String get searchHint => 'Search food, drinks, groceries etc';
  String get categoriesTitle => 'Categories';
  String get signatureCombosTitle => 'Signature Combos';
  String get freeDeliveryTag => 'Free Delivery';
  String get frequentlyOrderedTitle => 'Frequently Ordered';
  String get dealsOfTheDayTitle => 'Deals of the day';
  String get seeAllLink => 'See all';
  String get drinksAndLiquorTitle => 'Drinks And Liquor';
  String greeting(String firstName) => 'Hello $firstName';
  String get greetingFallback => 'Hello there';
  String get locatingAddress => 'Locating your address…';
  String get locationUnavailable => 'Tap to set delivery address';
}

class KitchenStrings {
  const KitchenStrings();

  String get searchHint => 'Search food, drinks, groceries etc';
  String get chefsPicksTitle => "Chef's Picks";
  String get menuTitle => 'Menu';
  String get estimatedTotalLabel => 'Estimated Total';
  String get goToCart => 'Go to cart';
  String get goToCheckout => 'Go to Checkout';
  String pay(String amount) => 'Pay $amount';
}

class OrderStrings {
  const OrderStrings();

  String get title => 'Orders';
  String get ongoingTab => 'Ongoing';
  String get completedTab => 'Completed';
  String get trackOrder => 'Track Order';
  String get getHelp => 'Get help';
  String get orderAgain => 'Order again';
  String get statusPreparing => 'Preparing';
  String get statusOnTheWay => 'On the way';
  String get statusDelivered => 'Delivered';
  String get statusCancelled => 'Cancelled';

  String get emptyOngoingTitle => 'No active orders';
  String get emptyOngoingBody =>
      'Your food delivery queue is currently empty.\n'
      'Check out what delicious meals are available nearby!';
  String get emptyCompletedTitle => 'No order history yet';
  String get emptyCompletedBody =>
      "You haven't placed any food or group orders on\n"
      'MotoBites yet. Your completed logs will gather right here.';
  String get goHome => 'Go home';

  TrackOrderStrings get track => const TrackOrderStrings();
}

class TrackOrderStrings {
  const TrackOrderStrings();

  String get title => 'Track Order';
  String get helpLabel => 'Help';
  String get estimatedArrival => 'Estimated arrival';
  String greeting(String name) => 'Hello $name';
  String get codeInstruction =>
      'Only give this code to the rider on confirmation of arrival of your order.';
  String get shareCodeLabel => 'Share this code\nto your rider';
  String get liveTrackingTitle => 'Live Tracking';
  String get deliveryDetailsTitle => 'Delivery Details';
  String get deliveringTo => 'Delivering to';
  String get fromLabel => 'From';
  String get paymentMethodLabel => 'Payment method';
  String get receiptTitle => 'Receipt';
  String subtotalLabel(int itemCount) => 'Subtotal ($itemCount items)';
  String get subtotalLabelGeneric => 'Subtotal';
  String get deliveryFeeLabel => 'Delivery fee';
  String get serviceFeeLabel => 'Service fee';
  String get totalPaidLabel => 'Total Paid';
  String get receiveButton => "I've received my order";
  String get orderReceivedMessage =>
      'Order receipt confirmed. Thank you for using MotoBites!';
}

class ProfileStrings {
  const ProfileStrings();

  String get title => 'My Profile';
  String get accountActivity => 'Account Activity';
  String get settings => 'Settings';
  String get support => 'Support';
  String get invoicesReceipts => 'Invoices & Receipts';
  String favorites(int count) => 'Favorites ($count)';
  String get favoritesLabel => 'Favorites';
  String get promosCredits => 'Promos & Credits';
  String get myAddresses => 'My Addresses';
  String get securityPrivacy => 'Security & Privacy';
  String get helpCenter => 'Help Center';
  String shareEarn(String amount) => 'Share & Earn $amount';
  String get shareEarnLabel => 'Share & Earn';
  String get logout => 'Logout';
  String get logoutConfirmTitle => 'Log out?';
  String get logoutConfirmMessage =>
      'You will need to sign in again to access your account.';
  String get logoutConfirmCancel => 'Cancel';
  String get logoutConfirmConfirm => 'Log Out';
  String get logoutInProgressMessage => 'Logging out…';
  String get nameUnavailable => '—';
  String get codeCopied => 'Referral code copied';
}

class RewardsStrings {
  const RewardsStrings();

  String get title => 'Rewards';
  String get availableBalance => 'Available Balance';
  String successfulReferrals(int count) => '$count successful referrals';
  String get howItWorks => 'How it works';
  String get step1 =>
      "Share your unique referral code with friends who haven't tried Motobites yet.";
  String step2(String rewardAmount) =>
      'They get $rewardAmount off their first meal when they sign up with your code.';
  String step3(String rewardAmount) =>
      'You get $rewardAmount added to your wallet once their first order is delivered.';
  String get step2Generic =>
      'They get a reward off their first meal when they sign up with your code.';
  String get step3Generic =>
      'You get a reward added to your wallet once their first order is delivered.';
  String get yourCode => 'Your code';
  String get copy => 'Copy';
  String get codeCopied => 'Referral code copied';
  String get balanceUnavailable => '—';
}

class CartStrings {
  const CartStrings();

  String get chooseProteinTitle => 'Choose Protein';
  String get requiredBadge => 'Required';
  String get addDrinkTitle => 'Add a Drink?';
  String get extrasTitle => 'Extras';
  String get orderSummaryTitle => 'Order summary';
  String get itemsFromSuffix => 'items from';
  String get estimatedTotalLabel => 'Estimated Total';
  String get goToCheckout => 'Go to checkout';

  String get proteinExtraAsunMeat => 'Extra Asun Meat';
  String get proteinGrilledChicken => 'Grilled Chicken Breast';
  String get proteinFriedFish => 'Fried Fish';

  String get drinkCoke => 'Coke 50cl';
  String get drinkSujiwater => 'Sujiwater 75cl';
  String get drinkFriedFish => 'Fried Fish';

  String get extraSausage => 'Sausage';
  String get extraCheese => 'Cheese';
  String get extraBurger => 'Burger';
  String get extraBacon => 'Bacon';
}

class CheckoutStrings {
  const CheckoutStrings();

  String get title => 'Checkout';
  String get yourOrder => 'Your order';
  String get itemsFromSuffix => 'items from';
  String get noteForRestaurant => 'Note for the restaurant';
  String get noteHint =>
      "Yes, I don't really like onions, I don't want to see too much of it.";
  String get deliverTo => 'Deliver to';
  String get giftingTitle => 'Gifting it to someone?';
  String get giftingSubtitle => 'Add their address to help the rider';
  String get deliveryTiming => 'Delivery timing';
  String get deliverNowTitle => 'Deliver now (ASAP)';
  String get deliverNowSubtitle => 'Standard';
  String get deliverLaterTitle => 'In 2 - 3 hours';
  String deliverLaterSubtitle(String amount) => 'Save $amount';
  String get noAddressTitle => 'Add a delivery address';
  String get noAddressSubtitle => 'Tap to add where we should deliver';

  String get paymentMethod => 'Payment method';
  String get pmMotowallet => 'Motowallet';
  String pmMotowalletBalance(String amount) => 'Balance: $amount';
  String get pmBankTransfer => 'Bank Transfer';
  String get pmBankTransferSub => 'GTBank - 8110986238';
  String get pmPaystack => 'Paystack';
  String get pmPaystackSub => 'Pay with card via Paystack';
  String get pmBnpl => 'Buy Now, Pay Later (BNPL)';
  String get pmBnplSub => 'Split into 4 interest-free payments via CDcare';
  String get pmAddCard => 'Add new card';
  String get pmAddCardSub => 'Visa, Mastercard, Verve';

  String get promoCode => 'Promo code';
  String get riderTip => 'Rider tip';
  String get riderTipHint => '100% for the rider';
  String get tipNotNow => 'Not now';

  String get summary => 'Summary';
  String get items => 'Items';
  String get promoCodeLabel => 'Promo code';
  String get subtotal => 'Subtotal';
  String get delivery => 'Delivery';
  String get serviceCharge => 'Service Charge';
  String payNow(String amount) => 'Pay $amount now';

  String get confirmTitle => 'Confirm your order';
  String get confirmSubtitle => 'Is everything correct?';
  String get services => 'Services';
  String get total => 'Total';
  String get backToCart => 'Back to cart';
  String get continueLabel => 'Continue';

  String get thankYou => 'Thank you for ordering!';
  String get thankYouSubtitle => 'Your food is on the way.';
  String get invoiceSummary => 'Invoice Summary';
  String get status => 'Status';
  String get statusPreparing => 'Preparing';
  String get estimatedArrival => 'Estimated arrival';
  String get deliveryToLabel => 'Delivery to';
  String get amountPaid => 'Amount paid';
  String get trackOrder => 'Track order';
  String get goHome => 'Go home';
}

class DealsStrings {
  const DealsStrings();

  String get screenTitle => 'Deals';
  String get preOrderDiscountsTitle => 'Pre-Order Discounts';
  String get twentyPercentOff => '20% Off';
  String get jerkChickenPasta => 'Jerk Chicken Pasta';
  String get jerkChickenPastaPrice => '₦8000';

  String get heroTitleDeals => 'Deals';
  String get heroTitleOfThe => 'Of The';
  String get heroTitleDay => 'Day';
  String get heroSubtitle =>
      'Enjoy unbeatable discount here! Eat up to NGN20,000';

  String get filterAllDeal => 'All Deal';
  String get filterBuy1Get1 => 'Buy 1 get 1';
  String get filterBuy1Get2 => 'Buy 1 get 2';
  String get filterFreeDelivery => 'Free Delivery';

  String get comboOffer => 'Combo offer';
  String get seeAll => 'See all';
  String get flashSales => 'Flash Sales';
  String flashSalesEndsIn(String time) => 'Ends in $time';
  String get freeDelivery => 'Free delivery';
  String get free => 'Free';

  String get spinAndWinTitle => 'Spin & Win';
  String get spinAndWinSubtitle => 'Tap to spin and reveal your prize.';
  String get spin => 'Spin';
  String get spinning => 'Spinning...';
  String youWonPrefix(String prize) => 'You won: $prize';
  String get tryAgainLabel => 'Try Again';

  String get congratulationsTitle => 'Congratulations';
  String get youWon => 'You Won';
  String get freeDeliveryEveryOrder => 'Free delivery on\nevery order';

  List<String> get wheelPrizes => const [
    'Free Delivery',
    'Free Spin',
    'N₂000\nCashback\non Amala',
    'Try again\nTomorrow',
    '1 Free\nDelivery',
    '10% Any\nMeal\nDiscount',
    'iPhone\n17 Pro',
    '50% on\npasta',
  ];
}

class InvoiceStrings {
  const InvoiceStrings();

  String get title => 'Invoices & Receipts';
  String get viewReceipt => 'View Receipt';
  String get emptyTitle => 'No invoices found';
  String get emptyBody =>
      'There are no recorded transactions\n'
      'or receipts available for this billing period.';

  String get brand => 'MOTOBITES.';
  String orderId(String id) => 'ORDER ID: $id';
  String get deliveredTo => 'Delivered to:';
  String get payment => 'Payment';
  String get orderSummary => 'Order Summary';
  String get subtotal => 'Subtotal';
  String get deliveryFee => 'Delivery Fee';
  String vat(double rate) => 'VAT ${(rate * 100).toStringAsFixed(0)}%';
  String get total => 'Total';
}

class SecurityStrings {
  const SecurityStrings();

  String get screenTitle => 'Security & Privacy';
  String get accountProtection => 'Account Protection';
  String get biometricLogin => 'Biometric Login / Face ID';
  String get activeSessions => 'Active Sessions';
  String get accountRecovery => 'Account Recovery';
  String get privacySettings => 'Privacy Settings';
  String get locationPermissions => 'Location Permissions';
  String get dataPrivacyPolicy => 'Data & Privacy Policy';
  String get deleteAccount => 'Delete account';
  String get deleteAccountDialogTitle => 'Delete Account?';
  String get deleteAccountDialogContent =>
      'Are you sure you want to delete your account? This action is permanent and cannot be undone.';
  String get cancel => 'Cancel';
  String get delete => 'Delete';

  // Active Sessions Screen
  String get sessionsTitle => 'Active Sessions';
  String get currentDevice => 'Current Device';
  String get otherDevices => 'Other Logged Devices';
  String get onlineStatus => 'Online';
  String get logoutBtn => 'Log out';
  String get footerText =>
      "If you don't recognize a device, log it out immediately.";
  String get deviceLoggedOutMsg => 'Device logged out successfully';
  String get confirmLogoutTitle => 'Log out device?';
  String get confirmLogoutContent =>
      'Are you sure you want to log out this session?';

  // Account Recovery Screen
  String get recoveryTitle => 'Account Recovery';
  String get recoveryMethods => 'Recovery Methods';
  String get recoveryEmail => 'Recovery Email';
  String get trustedContact => 'Trusted Contact';
  String get change => 'Change';
  String get addContact => 'Add contact';
  String get editContact => 'Edit contact';
  String get noneAdded => 'None added';

  // Change Recovery Email Bottom Sheet
  String get changeEmailTitle => 'Change recovery email';
  String get changeEmailSubtitle =>
      "We'll send a verification link to your new email address.";
  String get newEmailLabel => 'New email address';
  String get saveEmail => 'Save email';
  String get emailSuccessMsg => 'Recovery email updated successfully';

  // Add Trusted Contact Bottom Sheet
  String get addContactTitle => 'Add trusted contact';
  String get editContactTitle => 'Edit trusted contact';
  String get addContactSubtitle =>
      "Choose someone who can help verify your identity if you're locked out.";
  String get phoneLabel => 'Phone number';
  String get relationshipLabel => 'Relationship';
  String get saveContact => 'Save contact';
  String get contactSuccessMsg => 'Trusted contact saved successfully';

  // Error validations
  String get requiredPhone => 'Phone number is required';
  String get requiredRelationship => 'Relationship is required';
  String get invalidEmail => 'Enter a valid email address';
  String get invalidPhone => 'Enter a valid phone number';
}

class FavoritesStrings {
  const FavoritesStrings();

  String get screenTitle => 'Favorites';
  String get dishesTab => 'Dishes';
  String get kitchenTab => 'Kitchen';
  String get visitKitchen => 'Visit kitchen';
  String get addToCart => 'Add to cart';
  String get addedToCart => 'Added to cart successfully!';
  String get emptyKitchenTitle => 'No favorite kitchen';
  String get emptyDishesTitle => 'No favorite dishes';
  String get emptySubtitle =>
      "You haven't liked any dishes yet. Start browsing and save the ones you love!";
  String get goHome => 'Go home';
}

class HelpCenterStrings {
  const HelpCenterStrings();

  String get getHelpTitle => 'Get Help';
  String get chatWithSupport => 'Chat with support';
  String get contactSupport => 'Contact Support';
  String get rateUs => 'Rate us on the App Store';
  String get faqs => 'FAQs';

  // Chat Support
  String get chatTitle => 'Chat with support';
  String get supportAgentName => 'Emmanuel Adebayo';
  String get supportAgentRole => 'rider';
  String get chatGreeting => 'Hello Emmanuel,\nHow may I help you today?';
  String get typeMessage => 'Type a message...';
  String get suggestedReplies => 'Suggested replies';

  // ─── FAQs ────────────────────────────────────────────────────────────────────

  String get faqsTitle => 'FAQs';

  // 1 — What is MotoBites?
  String get faqWhatIsMotoBitesTitle => 'What is MotoBites?';
  String get faqWhatIsMotoBitesBody =>
      'MotoBites is a food delivery platform that allows users to order meals, drinks, snacks, and other food-related items from nearby restaurants and vendors and have them delivered quickly to their location.';

  // 2 — Where does MotoBites operate?
  String get faqWhereOperatesTitle => 'Where does MotoBites operate?';
  String get faqWhereOperatesBody =>
      'MotoBites currently operates in selected locations and continues to expand to more areas. Availability may vary depending on vendor coverage, rider availability, delivery distance, and traffic conditions.';

  // 3 — How do I place an order?
  String get faqHowToOrderTitle => 'How do I place an order?';
  String get faqHowToOrderBody =>
      'To place an order: open the MotoBites app, select your delivery location, browse restaurants or meals, add items to your cart, proceed to checkout, select a payment method, and confirm your order.';

  // 4 — Do I need an account?
  String get faqNeedAccountTitle => 'Do I need an account to use MotoBites?';
  String get faqNeedAccountBody =>
      'Yes. Users are required to create an account to place orders, track deliveries, receive support, and access rewards. However, payment can also be made via third-party payment gateways.';

  // 5 — Payment methods
  String get faqPaymentMethodsTitle => 'What payment methods are accepted?';
  String get faqPaymentMethodsBody =>
      'MotoBites supports Debit/Credit Cards, Bank Transfer, Wallet Payments, and selected Pay on Delivery options where available. Available methods may vary by location or user eligibility.';

  // 6 — Pay on delivery
  String get faqPayOnDeliveryTitle => 'Can I pay on delivery?';
  String get faqPayOnDeliveryBody =>
      'Yes, Pay on Delivery may be available for selected users, vendors, locations, or order types. MotoBites reserves the right to restrict this option for high-value orders, new users, certain delivery areas, or certain vendors.';

  // 7 — Debited but not confirmed
  String get faqDebitedNotConfirmedTitle =>
      'Why was my payment debited but order not confirmed?';
  String get faqDebitedNotConfirmedBody =>
      'This may happen due to network issues, payment gateway delays, vendor timeout, or bank processing delays. The transaction may reverse automatically or your wallet may be credited. Please contact support if unresolved after the stated timeframe.';

  // 8 — Refunds (existing, kept in place)
  String get faqRefundTitle => 'How long do refunds take?';
  String get faqRefundBody =>
      'Refund timelines depend on the payment method: wallet refunds are usually instant, card refunds take 3–10 business days, and bank transfer reversals are subject to banking timelines.';

  // 9 — Service charge
  String get faqServiceChargeTitle => 'Why is there a service charge?';
  String get faqServiceChargeBody =>
      'Service charges help cover platform operations, technology infrastructure, customer support, and logistics coordination.';

  // 10 — Delivery time
  String get faqDeliveryTimeTitle => 'How long does delivery take?';
  String get faqDeliveryTimeBody =>
      'Delivery times depend on restaurant preparation time, traffic conditions, weather, rider availability, and delivery distance. Estimated delivery times are displayed before checkout.';

  // 11 — Variable delivery fee
  String get faqDeliveryFeeVariesTitle =>
      'Why is the delivery fee different sometimes?';
  String get faqDeliveryFeeVariesBody =>
      'Delivery fees may vary based on distance, traffic conditions, weather, peak demand periods, and your delivery priority selection.';

  // 12 — Track order (existing, kept in place)
  String get faqTrackTitle => 'How do I track my order?';
  String get faqTrackBody =>
      'You can track your order in real-time from the Orders tab. Tap on any active order to see live tracking with estimated delivery time.';

  // 13 — Order delayed
  String get faqOrderDelayedTitle => 'Why is my order delayed?';
  String get faqOrderDelayedBody =>
      'Delays may occur due to heavy traffic, weather conditions, restaurant preparation delays, rider reassignment, or high order volume. MotoBites continuously works to minimise delays.';

  // 14 — Schedule orders
  String get faqScheduleOrderTitle => 'Can I schedule orders?';
  String get faqScheduleOrderBody =>
      'Yes. Users may schedule orders in advance where supported by the restaurant.';

  // 15 — Rider cannot reach
  String get faqRiderCannotReachTitle =>
      'What happens if the rider cannot reach me?';
  String get faqRiderCannotReachBody =>
      'If the rider cannot reach you, they may attempt to call you. The order may be delayed or eventually cancelled if you remain unreachable. Always provide accurate contact details and delivery instructions.';

  // 16 — Multiple restaurants
  String get faqMultipleRestaurantsTitle =>
      'Can I order from multiple restaurants at once?';
  String get faqMultipleRestaurantsBody =>
      'Yes, selected locations may support multi-restaurant group ordering depending on restaurant proximity, delivery logistics, and rider availability. Additional delivery charges may apply.';

  // 17 — Modify order
  String get faqModifyOrderTitle => 'Can I modify my order after payment?';
  String get faqModifyOrderBody =>
      'Orders may only be modified before the restaurant begins preparation. Once preparation starts, modifications may no longer be possible.';

  // 18 — Cancel order
  String get faqCancelOrderTitle => 'Can I cancel my order?';
  String get faqCancelOrderBody =>
      'Orders may be cancelled within a limited timeframe. Orders already being prepared or picked up may not qualify for cancellation or refund.';

  // 19 — Incorrect order
  String get faqIncorrectOrderTitle =>
      'What if my order is incomplete or incorrect?';
  String get faqIncorrectOrderBody =>
      'Please contact support immediately through the app and provide the order number, missing or incorrect item details, and photos where applicable. MotoBites will investigate and resolve eligible claims accordingly.';

  // 20 — Cold food
  String get faqColdFoodTitle => 'What if my food arrives cold?';
  String get faqColdFoodBody =>
      'Food temperature may be affected by traffic conditions, delivery distance, restaurant packaging, and weather. MotoBites works with vendors and riders to optimise food freshness and delivery quality.';

  // 21 — Does MotoBites prepare food?
  String get faqMotobitesPreparesTitle => 'Does MotoBites prepare the food?';
  String get faqMotobitesPreparesBody =>
      'No. Food is prepared solely by independent restaurants and vendors. MotoBites only facilitates ordering and delivery logistics.';

  // 22 — What is a Group Order?
  String get faqWhatIsGroupOrderTitle => 'What is a Group Order?';
  String get faqWhatIsGroupOrderBody =>
      'Group Orders allow multiple people to add meals into one shared order from the same or selected restaurants.';

  // 23 — Who pays for Group Order?
  String get faqGroupOrderPayTitle => 'Who pays for a Group Order?';
  String get faqGroupOrderPayBody =>
      'Typically, the host pays for the full order. Additional split payment options may become available in future updates.';

  // 24 — Friends add items separately
  String get faqGroupOrderAddItemsTitle => 'Can friends add items separately?';
  String get faqGroupOrderAddItemsBody =>
      'Yes. Participants can add their own items through a shared group order link before checkout.';

  // 25 — Rewards (existing, kept in place)
  String get faqPointsTitle => 'What is MotoBites Rewards?';
  String get faqPointsBody =>
      'MotoBites Rewards is our loyalty program where users earn points, cashback, discounts, and special offers based on eligible activities.';

  // 26 — Earn reward points
  String get faqEarnPointsTitle => 'How do I earn reward points?';
  String get faqEarnPointsBody =>
      'Users may earn points through completed orders, referrals, promotions, challenges, and campaigns.';

  // 27 — Referrals
  String get faqReferralsTitle => 'How do referrals work?';
  String get faqReferralsBody =>
      'Users can invite friends using their referral code or link. Eligible rewards are granted after the referred user completes qualifying actions.';

  // 28 — No referral bonus
  String get faqNoReferralBonusTitle =>
      "Why didn't I receive my referral bonus?";
  String get faqNoReferralBonusBody =>
      'Referral rewards may not apply if referral conditions were not met, multiple accounts were detected, fraudulent activity was suspected, or minimum order requirements were not satisfied.';

  // 29 — Restaurant selection
  String get faqRestaurantSelectionTitle => 'How are restaurants selected?';
  String get faqRestaurantSelectionBody =>
      'MotoBites partners with vendors based on food quality, service reliability, hygiene standards, and operational capacity.';

  // 30 — Restaurants rejecting orders
  String get faqRestaurantRejectTitle => 'Can restaurants reject orders?';
  String get faqRestaurantRejectBody =>
      'Yes. Vendors may reject orders due to item unavailability, operational issues, high order volume, or closing hours.';

  // 31 — Are riders employed?
  String get faqRidersEmployedTitle => 'Are riders employed by MotoBites?';
  String get faqRidersEmployedBody =>
      'Delivery riders may operate as independent logistics partners or third-party delivery personnel. They may also be employed accordingly.';

  // 32 — Tip riders
  String get faqTipRidersTitle => 'Can I tip riders?';
  String get faqTipRidersBody =>
      'Yes. Users may tip riders through the app or directly where applicable.';

  // 33 — Payment security
  String get faqPaymentSecureTitle => 'Is my payment information secure?';
  String get faqPaymentSecureBody =>
      'MotoBites uses secure third-party payment providers and industry-standard security measures to protect transactions and user data.';

  // 34 — Change phone/address
  String get faqChangePhoneAddressTitle =>
      'Can I change my phone number or address?';
  String get faqChangePhoneAddressBody =>
      'Yes. Users can update account information from their profile settings.';

  // 35 — Account suspended
  String get faqAccountSuspendedTitle => 'Why was my account suspended?';
  String get faqAccountSuspendedBody =>
      'Accounts may be suspended due to fraudulent activity, abusive behaviour, fake orders, or violation of platform policies.';

  // 36 — Cannot order in area
  String get faqCannotOrderAreaTitle => "Why can't I order in my area?";
  String get faqCannotOrderAreaBody =>
      'MotoBites availability depends on vendor presence, rider availability, delivery radius, and operational coverage. We are continuously expanding.';

  // 37 — Contact support
  String get faqContactSupportTitle => 'How do I contact customer support?';
  String get faqContactSupportBody =>
      'You can contact support through in-app support/chat, email at support@motobitesng.com, phone on 09020743530, or our social media channels (TikTok: motobitesng, Instagram: motobites3, X: motobitesng).';

  // 38 — App not working
  String get faqAppNotWorkingTitle =>
      'What should I do if the app is not working properly?';
  String get faqAppNotWorkingBody =>
      'Please try updating the app, restarting the app, and checking your internet connection. If issues persist, contact support.';

  // 39 — Personal data
  String get faqPersonalDataTitle => 'Does MotoBites store my personal data?';
  String get faqPersonalDataBody =>
      'Yes. MotoBites processes user data in accordance with applicable privacy and data protection laws. Please review our Privacy Policy for details.';

  // 40 — Price changes
  String get faqChangePricesTitle => 'Can MotoBites change prices or fees?';
  String get faqChangePricesBody =>
      'Yes. Prices, fees, and promotions may change at any time based on operational or market conditions.';

  // 41 — Priority Delivery
  String get faqPriorityDeliveryTitle => 'What is Priority Delivery?';
  String get faqPriorityDeliveryBody =>
      'Priority Delivery is a faster delivery option designed for quicker order fulfillment where available. Additional fees may apply.';

  // 42 — Restaurant unavailable
  String get faqRestaurantUnavailableTitle =>
      'Why do some restaurants appear unavailable?';
  String get faqRestaurantUnavailableBody =>
      'Restaurants may become temporarily unavailable due to closing hours, high order demand, rider shortages, or operational issues.';

  // 43 — Pre-order for events
  String get faqPreOrderEventsTitle =>
      'Can I pre-order meals for events or offices?';
  String get faqPreOrderEventsBody =>
      'Yes. Large or scheduled orders may be supported depending on vendor capacity.';

  // 44 — ETA calculation
  String get faqEtaCalculationTitle =>
      'How does MotoBites determine estimated arrival time?';
  String get faqEtaCalculationBody =>
      'ETA is calculated using restaurant preparation time, traffic conditions, rider location, and delivery distance.';

  // 45 — Bad weather
  String get faqBadWeatherTitle => 'What happens during bad weather?';
  String get faqBadWeatherBody =>
      'Extreme weather conditions may increase delivery times, affect rider availability, and temporarily increase delivery fees. Safety remains a priority.';

  // ─── Legacy entries (originally shipped, kept for backward compatibility) ───

  // Confirmation PIN
  String get faqPinTitle => 'What is confirmation Pin?';
  String get faqPinBody =>
      'A confirmation PIN is a unique code shared with you for each delivery. Only share this PIN with the rider upon receiving your order to confirm delivery.';

  // ─── Contact / Help ──────────────────────────────────────────────────────────

  String get helpTitle => 'Help';
  String get needHelp => 'Need Help?';
  String get needHelpSubtitle => "We're here to assist you.";
  String get contactSupportSection => 'Contact Support';
  String get contactSupportSubtitle =>
      'For further information, or significant changes to your order';
  String get email => 'hello@motobites.com';
  String get address => '118 Awolowo Road, Ikoyi, Lagos';
  String get socialTitle => 'Our social networks';
  String get socialSubtitle => 'You can reach us here';
  String get phoneNumber => '+234 8039003300';
}

class NotificationStrings {
  const NotificationStrings();

  String get title => 'Notifications';
  String get todaySection => 'Today';
  String get yesterdaySection => 'Yesterday';
  String get april25Section => '25 April 2026';

  // Group Order
  String get groupOrderTitle => 'Group Order Active';
  String get groupOrderDesc =>
      "Funke just joined your group! She's adding Asun Pasta to the basket. Check it out.";
  String get groupOrderTime => '2 mins ago';

  // Out for Delivery
  String get outForDeliveryTitle => 'Out for Delivery';
  String get outForDeliveryDesc =>
      "Your Chef's Pick is on its way. Rider Tunde is currently 4 minutes away from your location.";
  String get outForDeliveryTime => '1 hour ago';

  // Mid-week Treat
  String get midWeekTreatTitle => 'Mid-week Treat?';
  String get midWeekTreatDesc =>
      'Enjoy 15% off your next order at Pasta Prima™. Use code: MOTO15 at checkout.';
  String get midWeekTreatTime => 'Yesterday, 1:45 PM';

  // Security Alert
  String get securityAlertTitle => 'Security Alert';
  String get securityAlertDesc =>
      'A new login was detected on your account from a Chrome browser on Windows.';
  String get securityAlertTime => 'Yesterday, 9:20 AM';

  // Credits Added
  String get creditsAddedTitle => 'Credits Added';
  String get creditsAddedDesc =>
      "You've earned ₦500 in credits from your last group order referral. Spend them anytime!";
  String get creditsAddedTime => 'Apr 25, 6:00 PM';
}

bool isPalindrome(String str) {
  if (str.length < 3) return false;
  String? rev = str.split('').reversed.join('');
  if (str == rev) return true;
  return false;
}
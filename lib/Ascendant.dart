String greeting() {
  final hour = DateTime.now().hour;
  if (hour < 12) return "Selamat pagi ☀️";
  if (hour < 17) return "Selamat siang 🌤️";
  return "Selamat malam 🌙";
}
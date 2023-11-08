# Değişkenler ve Özellikleri

Bir programlama dilinde, değişkenler verileri saklayan ve işleyen özel isimlerdir. İşte JavaScript'te değişkenlerin tanımlanması ve özellikleri:

```javascript
// Değişken tanımlama
var sayi = 42; // 'sayi' isimli bir değişken tanımladık ve 42 değerini atadık
var metin = "Merhaba, dünya!"; // 'metin' isimli bir değişken tanımladık ve bir metin atadık

// Değişkenlerin özellikleri
document.write("sayi değişkeninin değeri: " + sayi + "<br>"); // Değişkenin değerini yazdırdık
document.write("metin değişkeninin değeri: " + metin + "<br>");

sayi = 100; // Değişkenin değerini güncelledik
metin = "Merhaba, JavaScript!"; // Değişkenin değerini güncelledik

document.write("sayi değişkeninin güncellenmiş değeri: " + sayi + "<br>");
document.write("metin değişkeninin güncellenmiş değeri: " + metin + "<br>");

// Değişken türleri
var booleanDegisken = true; // Boolean türünde bir değişken
var sayiDegisken = 42; // Sayı türünde bir değişken
var metinDegisken = "Bu bir metin"; // Metin türünde bir değişken

document.write("booleanDegisken türü: " + typeof booleanDegisken + "<br>");
document.write("sayiDegisken türü: " + typeof sayiDegisken + "<br>");
document.write("metinDegisken türü: " + typeof metinDegisken + "<br>");

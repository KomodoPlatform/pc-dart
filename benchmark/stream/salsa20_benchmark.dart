// Copyright (c) 2013, Iván Zaera Avellón - izaera@gmail.com
// Use of this source code is governed by a LGPL v3 license.
// See the LICENSE file for more information.

library cipher.benchmark.stream.salsa20_benchmark;

import "dart:typed_data";

import "package:cipher/cipher.dart";

import "../benchmark/stream_cipher_benchmark.dart";

void main() {
  final keyBytes = new Uint8List.fromList([0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xAA,0xBB,0xCC,0xDD,0xEE,0xFF]);
  final key = new KeyParameter(keyBytes);
  final iv = new Uint8List.fromList([0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77]);
  final params = new ParametersWithIV(key,iv);

  new StreamCipherBenchmark("Salsa20", null, true,  () => params).report();
  new StreamCipherBenchmark("Salsa20", null, false, () => params).report();
}

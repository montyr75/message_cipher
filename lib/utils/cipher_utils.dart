typedef AlterCodeUnit = int Function(int codeUnit);

String alter(String msg, AlterCodeUnit operation) => String.fromCharCodes(msg.codeUnits.map(operation));

// algorithm to encode one character
int encodeCodeUnit(int codeUnit) => codeUnit + 1;

// algorithm to decode one character
int decodeCodeUnit(int codeUnit) => codeUnit - 1;
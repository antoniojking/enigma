## Class Requirements
You are required to build an Enigma class with the methods described below; you may find it useful to create additional classes and/or modules. All classes, modules and methods should have a single responsibility, and should be well organized and readable.


## Enigma Class
Create an Enigma class with the following methods:

`encrypt(message, *key, *date)`
- The encrypt method takes a message String as an argument.
- It can optionally take a Key and Date as arguments to use for encryption.
- If the key is not included, generate a random key.
- If the date is not included, use today’s date.

The encrypt method returns a hash with three keys:
  `{ :encryption => the encrypted String,
     :key        => the key used for encryption as a String,
     :date       => the date used for encryption as a String in the form DDMMYY }`

`decrypt(ciphertext, key, *date)`
- The decrypt method takes a ciphertext String and the Key used for encryption as arguments.
- It can optionally take a date as the third argument.
- If no date is given, this method should use today’s date for decryption.

The decrypt method returns a hash with three keys:
  `{ :decryption => the decrypted String,
     :key        => the key used for decryption as a String,
     :date       => the date used for decryption as a String in the form DDMMYY }`


## Command Line Interface
Add a command line interface for encryption and decryption. You should create a Runner file called `encrypt.rb` that takes two command line arguments.
  - The first is an existing file that contains a message to encrypt.
  - The second is a file where your program should write the encrypted message.

In addition to writing the encrypted message to the file, your program should output to the screen the file it wrote to, the key and the date.
    `ruby ./lib/encrypt.rb message.txt encrypted.txt`
    => Created 'encrypted.txt' with the key 82648 and date 240818

Additionally, you should create a Runner file called `decrypt.rb` that takes four command line arguments.
  - The first is an existing file that contains an encrypted message.
  - The second is a file where your program should write the decrypted message.
  - The third is the key to be used for decryption.
  - The fourth is the date to be used for decryption.

In addition to writing the decrypted message to the file, your program should output to the screen the file it wrote to, the key used for decryption, and the date used for decryption:

    `ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 240818`
    => Created 'decrypted.txt' with the key 82648 and date 240818


## Useful Methods
- Array#rotate
- Date#strftime
- Date::today
- Enumerator#with_index

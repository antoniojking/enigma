# Enigma Pseudocode

[x] create Offset class (calculated variable of calculator)
    [x] instantiate date and offsets array/hash  
    [x] allow input of date or default to today's date
    [x] format date as a number, DDMMYY
    [x] determine values for offset: square the value and pull last 4 digits
    [x] define A offset
    [x] define B offset
    [x] define C offset
    [x] define D offset

[x] create Key class (calculated variable of calculator)
    [x] instantiate pin and keys array/hash
    [x] allow input of 5 digit number or generate random 5 digit number if not given
    [x] number should allow leading zeros
    [x] define A key
    [x] define B key
    [x] define C key
    [x] define D key

[] *create Text class

[] Create Algorithm class (Calculator)
    [] instantiate shifts, keys, offsets, encryption_date, decryption_date, message, ciphertext, character_set, encryption, decryption
    [] method to calculate shifts
    [] method to encrypt = return encryption string
    [] method to decrypt = return decryption string

[] create Enigma Class
    [] add encrypt method with (message, key, date) as arguments
        => hash with 3 keys
        [x] need to account for date that is nil and default to today's date
        [] need to account for key that is nil and generate random key
        [] may need to convert key and date to string for hash
    [] add decrypt method with (ciphertext, key, date) as arguments
        => hash with 3 keys
        [] need to account for date that is nil and default to today's date
        [] may need to convert key and date to string for hash

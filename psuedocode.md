# Enigma Pseudocode

[] create Enigma Class
    [] add encrypt method with (message, key, date) as arguments
        => hash with 3 keys
        [] need to account for date that is nil and default to today's date
        [] need to accout for key that is nil and generate random key
        [] may need to convert key and date to string for hash
    [] add decrypt method with (ciphertext, key, date) as arguments
        => hash with 3 keys
        [] need to account for date that is nil and default to today's date
        [] may need to convert key and date to string for hash


[] Create Algorithm class (Calculator)
    [] instantiate shifts, keys, offsets, encryption_date, decryption_date, message, ciphertext, character_set, encryption, decryption
    [] method to calculate shifts
    [] method to encrypt = return encryption string
    [] method to decrypt = return decryption string

[] create Key class (calculated variable of calculator)
    [] instantiate pin and keys array/hash
    [] allow input of 5 digit number or generate random 5 digit number if not given
    [] number should allow leading zeros
    [] define A key
    [] define B key
    [] define C key
    [] define D key

[] create Offset class (calculated variable of calculator)
    [] instantiate date and offsets array/hash  
    [] allow input of date or default to today's date
    [] format date as a number, DDMMYY
    [] determine values for offset: square the value and pull last 4 digits
    [] define A offset
    [] define B offset
    [] define C offset
    [] define D offset

[] *create Text class
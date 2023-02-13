count_vowels(Str, Count) :- atom_chars(Str, Chars), include(vowel, Chars, Vowels), length(Vowels, Count). 
vowel(a).
vowel(e). 
vowel(i). 
vowel(o). 
vowel(u).

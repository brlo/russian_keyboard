### RussianKeyboard

The Ruby tool which fix your wrong keyboard layout.
Repair original text which was written at wrong keyboard layout.

Короче, гем исправляет текст набранный в неправильной раскладке клавиатуры. Русскому человеку знакомо это чувство.

This gem can switch this `Ghbdtn! Lf 'nj ;t utv #1!` to this `Привет! Да это же гем №1!`, or this string `Руддщб икдщ! Ершы шы ьн афмщкшеу пуь!` to this `Hello, bro! This is my favorite gem!`

### Usage examples:
```ruby
"Ghbdtn!".switch_keys(:to_ru)
=> "Привет!"

"Реддщ!".switch_keys(:to_en)
=> "Hello!"

str = "Руддщб ьн акшутв!"
str.switch_keys
=> "Hello my friend!"

str.switch_keys
=> "Руддщб ьн акшутв!"

str.switch_keys! :to_en
puts str
=> "Hello my friend!"


Additional commands:

RussianKeyboard.to_ru str
RussianKeyboard.to_en str
RussianKeyboard.auto_switch str

```

### INSTALL
Add gemname to gemfile
```
gem "russian_keyboard"
```
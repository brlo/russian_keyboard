# RussianKeyboard

The Ruby tool which fix your wrong keyboard layout.
Repair original text which was written at wrong keyboard layout.

Короче, gem исправляет текст набранный в неправильной раскладке клавиатуры. Русскому человеку знакомо это чувство.

This gem can switch this `Ghbdtn! Lf 'nj ;t utv #1!` to this `Привет! Да это же гем №1!`, or this string `Руддщб икдщ! Ершы шы ьн афмщкшеу пуь!` to this `Hello, bro! This is my favorite gem!`

## Usage examples:

```ruby
RussianKeyboard.to_ru('Ghbdtn!')
=> "Привет!"

RussianKeyboard.to_en('Руддщ!')
=> "Hello!"

RussianKeyboard.auto_switch('Руддщб ьн акшутв!')
=> "Hello, my friend!"

RussianKeyboard.gues_keymap('привет')
=> "ru"

RussianKeyboard.gues_keymap('hello')
=> "en"
```

## INSTALL

```
gem 'russian_keyboard'
```


## Contributing

* Fork the project.
* Run `bundle install`
* Run `bundle exec guard`
* Make your feature addition or bug fix.
* Add tests for it. This is important.
* Send me a pull request.

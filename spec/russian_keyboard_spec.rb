require 'russian_keyboard'

RSpec.describe RussianKeyboard do
  describe 'User can' do
    it 'translate keymap from english to russian' do
      val = RussianKeyboard.to_ru('ghbdtn')
      expect(val).to be == 'привет'
    end

    it 'translate keymap from russian to english' do
      val = RussianKeyboard.to_en('руддщ')
      expect(val).to be == 'hello'
    end

    it 'auto-translate keymap to russian' do
      val = RussianKeyboard.auto_switch('ghbdtn')
      expect(val).to be == 'привет'
    end

    it 'translate keymap from russian to english' do
      val = RussianKeyboard.auto_switch('руддщ')
      expect(val).to be == 'hello'
    end

    it 'gues russian keymap' do
      val = RussianKeyboard.gues_keymap('руддщ')
      expect(val).to be == 'ru'
    end

    it 'gues english keymap' do
      val = RussianKeyboard.gues_keymap('ghbdtn')
      expect(val).to be == 'en'
    end
  end
end

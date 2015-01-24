require 'core_ext'

module RussianKeyboard

	ENGLISH_KEYS = %w[ q w e r t y u i o p [ ] a s d f g h j k l ; ' \ z x c v b n m , . / Q W E R T Y U I O P { } A S D F G H J K L : " | Z X C V B N M < > ? @ # $ ^ & ]
  RUSSIAN_KEYS = %w[ й ц у к е н г ш щ з х ъ ф ы в а п р о л д ж э \ я ч с м и т ь б ю . Й Ц У К Е Н Г Ш Щ З Х Ъ Ф Ы В А П Р О Л Д Ж Э / Я Ч С М И Т Ь Б Ю , " № ; : ? ]

  def self.to_ru str
    str.tr(ENGLISH_KEYS.join, RUSSIAN_KEYS.join)
  end

  def self.to_en str
    str.tr(RUSSIAN_KEYS.join, ENGLISH_KEYS.join)
  end

  def self.auto_switch str
  	case gues_keymap str
  	when "en"
  		to_ru str
  	when "ru"
  		to_en str
  	else
  		to_ru str
  	end 
  end

  private

  def self.gues_keymap str
  	en_count = str.scan(/A-Z{1}/i).size
  	ru_count = str.scan(/\p{Cyrillic}{1}/i).size
  	
  	return en_count >= ru_count ? "en" : "ru"
  end
end

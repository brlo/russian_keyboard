String.class_eval do

  def switch_keys keymap_name = nil
  	case keymap_name
  	when :to_ru
    	RussianKeyboard.to_ru self
  	when "to_ru"
    	RussianKeyboard.to_ru self
  	when :to_en
    	RussianKeyboard.to_en self
  	when "to_en"
    	RussianKeyboard.to_en self
  	else
    	RussianKeyboard.auto_switch self
  	end
  end

  def switch_keys! keymap_name = nil
  	replace switch_keys keymap_name
  end

end
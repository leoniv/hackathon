require 'test_helper'

module HackathonTest
  describe 'Проверка спецификации приложения' do
    like_rubify_runtime Runtimes::Thick

    it 'номер версии' do
      мЕтаданные.Версия.must_equal Hackathon::VERSION
    end

    it 'имя конфигурации' do
      мЕтаданные.Имя.must_equal 'Хакатон'
    end
  end
end


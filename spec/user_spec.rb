require 'user'

describe User do
  let(:user) { described_class.new(name, last_name) }

  context 'when have name' do
    let(:name) { "Otávio" }
    let(:last_name) { "Shanks" }

    describe '.say_my_name' do
      it 'Diz o nome e o sobrenome se tiver nome' do
        expect(user.say_my_name).to eq('Meu nome é Otávio Shanks!')
      end
    end
  end

  context 'when has no name' do
    let(:name) { nil }
    let(:last_name) { "Oliveira" }

    describe '.say_my_name' do
      it 'Quando não tem nome, fala que gio é gay' do
        expect(user.say_my_name).to eq('O gio é gay!')
      end
    end
  end
end

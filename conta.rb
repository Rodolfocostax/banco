require_relative 'cliente'

class Conta #Classe é uma cosntante por isso é iniciada com letra maiuscula
    attr_reader :numero, :titular #para leitura
    attr_accessor :saldo #para leiruta e escrita        #    attr_writer para escrita

  def initialize(numero, titular, saldo)
    @numero = numero#variavel de instacia
    @titular = titular
    @saldo = saldo
    end

    def sacar(valor)
        if saldo >= valor
        self.saldo -= valor# pode ser o self. ou @ para o ruby entender que estamos falando do saldo
        else
            puts "Seu saldo é #{saldo} menos que o valor que deseja sacar #{valor}"
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_destino, valor)
        sacar(valor)
        conta_destino.depositar(valor)
    end
end



class User 
    attr_accessor :name, :total_balance, :acount
    def initialize(name, acount)
        @name = name
        @acount = acount
    end
end

class Bankacount
    attr_accessor :balance
    def initialize(bank, account_number,balance = 0)
        if balance < 0
            raise RangeError, "saldo negativo"
        end
        @bank = bank
        @account_number = account_number
        @balance = balance
    end
end

     def transfer(ac1,ac2)
        ac3 = ac1 + ac2
        ac4 = ac1 - ac2
     end


ac1 = Bankacount.new('santander' ,1234,2000)
ac2 = Bankacount.new('chile' ,4321,3000)
p1 = User.new('joaquin',ac1)
p2 = User.new('riquelme',ac2)
p1 = transfer

pp p1
pp p2

# class Persona
#     attr_accessor :nombre, :edad, :redes_sociales
#     def initialize(nombre,edad,redes_sociales)
#         @nombre = nombre
#         @edad = edad
#         @redes_sociales = redes_sociales
#     end
# end

# class Redsocial 
#     attr_accessor :tipo, :nombre_usuario
#     def initialize(tipo, nombre_usuario)
#         @tipo = tipo
#         @nombre_usuario = nombre_usuario
#     end
# end

# rs1 = Redsocial.new(:facebook, 'muka')
# rs2 = Redsocial.new(:twitter, 'mukool')
# p1 = Persona.new('Roberto', 29, [rs1, rs2])

# puts p1.redes_sociales

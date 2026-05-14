strings = ["Olá Mundo!", "Olá OBC!", "Ruby é divertido, Olá mundo!"]

strings.each do |srting|
    if srting =~/\AOlá.*mundo\z/
        puts "A #{srting} corresponde ao padrão"
    else
        puts "A #{srting} não corresponde ao padrão"
    end
end


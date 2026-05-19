# Renomeando arquivos
#File.rename("data/files.txt", "data/courses.txt") # renomear arquivo txt

#deletar arquivos 
if File.exist?("data/teste.txt")
	File.delete("data/teste.txt")
end

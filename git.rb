                         GIT
Git é o sistema de controle de versão open source mais usado no mundo atualmente! Ele é usado para controlar o histórico de alterações de arquivos e principalmente de projetos de desenvolvimento de software. Ele permite mais flexibilidade no fluxo de trabalho, segurança e desempenho. 

Alguns comandos essenciais do git são:
git init: cria um novo repositório Git na pasta atual. É o primeiro passo quando você começa um projeto.

git clone: copia um repositório existente (por exemplo, do GitHub) para sua máquina.

git status: mostra o estado atual: quais arquivos foram modificados, adicionados ou estão prontos para commit.

git add: adiciona arquivos à staging area (preparação). Pode ser específico (git add arquivo.rb) ou geral (git add .).

git commit -m: registra as alterações adicionadas no histórico do repositório com uma mensagem descritiva.

git commit -a -m : faz commit direto de todos os arquivos modificados/deletados sem precisar do git add. Não inclui arquivos novos.

git log: exibe o histórico de commits, quem fez e quando.

git diff: mostra as diferenças entre o que está no diretório e o que está no último commit ou na staging.

git branch: lista, cria ou remove branches (ramificações do projeto).

git checkout / git switch: troca de branch ou restaura arquivos para um estado anterior.

git merge: junta alterações de uma branch em outra.

git pull: puxa as últimas alterações do repositório remoto para o seu local.

git push: envia seus commits locais para o repositório remoto (ex: GitHub).

git reset: remove arquivos da staging ou volta commits.

git restore: descarta alterações em arquivos, voltando ao estado anterior.



O fluxo de uso geralmente vai ser:
git init ou git clone - Editar/criar arquivos
git status para ver mudanças
git add para preparar
git commit -m "mensagem"
git push para enviar ao remoto
git pull para atualizar com o remoto
Usar branch, merge e checkout conforme necessário
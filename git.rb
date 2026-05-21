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
git init ou git clone - editar/criar arquivos
git status para ver mudanças
git add para preparar
git commit -m "mensagem"
git push para enviar ao remoto
git pull para atualizar com o remoto
Usar branch, merge e checkout conforme necessário

              BOAS PRÁTICAS COM GIT 
Nomeie seus commits com cuidado, sendo claro e objetivo para garantir que no futuro esteja claro  o que foi alterado e o motivo.

Revise as mudanças antes de commitá-las, isso ajuda a evitar commits de código errado ou incompleto. Use git diff para ver as mudanças que serão comitadas e git status para ver os arquivos modificados.

Commits pequenos e frequentes pois são mais facil de revisar e reverter se necessário. Tente fazer commit toda vez q você completar uma funcionalidade ou correção.

Tipos de versões semânticas:
Major (Versão pricipal): Indicada pela primeira parte do número da versão. Essa versão inclui mudanças significativas, grandes novas funcionalidades ou reestruturações que podem quebrar a compatibilidade com versões anteriores.

Minor: Indicada pela segunda parte do número da versão. Essa versão adiciona funcionalidades ou melhorias novas, mas mantém a compatibilidade com versões anteriores.

Patch: Indicada pela terceira parte do número da versão. Essa versão é focada na correção de bugs e pequenas melhorias que não afetam a compatibilidade com as versões anteriores.
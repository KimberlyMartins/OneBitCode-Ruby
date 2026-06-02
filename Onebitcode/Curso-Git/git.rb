                         GIT
Git é o sistema de controle de versão open source mais usado no mundo atualmente! Ele é usado para controlar o histórico de alterações de arquivos e principalmente de projetos de desenvolvimento de software. Ele permite mais flexibilidade no fluxo de trabalho, segurança e desempenho. 

Alguns comandos essenciais do git são:
git init: cria um novo repositório Git na pasta atual. É o primeiro passo quando você começa um projeto.

git clone: copia um repositório existente (por exemplo, do GitHub) para sua máquina.

git status: mostra o estado atual: quais arquivos foram modificados, adicionados ou estão prontos para commit.

git add: adiciona arquivos à staging area (preparação). Pode ser específico (git add arquivo.rb) ou geral (git add .).

git commit -m: registra as alterações adicionadas no histórico do repositório com uma mensagem descritiva.

git commit -a -m : faz commit direto de todos os arquivos modificados/deletados sem precisar do git add. Não inclui arquivos novos.

git log: exibe o histórico de commits, quem fez e quando. Para sair pressione a tecla Q.

git diff: mostra as diferenças entre o que está no diretório e o que está no último commit ou na staging.

git branch: lista, cria ou remove branches (ramificações do projeto).

git checkout / git switch: troca de branch ou restaura arquivos para um estado anterior.

git merge: junta alterações de uma branch em outra.

git pull: puxa as últimas alterações do repositório remoto para o seu local.

git push: envia seus commits locais para o repositório remoto (ex: GitHub).

git reset: remove arquivos da staging ou volta commits.

git restore: descarta alterações em arquivos, voltando ao estado anterior.

git cherry-pick: permite copiar um commit específico (pelo hash) de uma branch e aplicar na outra, sem trazer o restante do histórico daquela branch. Diferente do merge que traz a branch completa. Para ver  hash do commit, usamos o git log.



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


                                BRANCHES
Branches são ramificações que permitem trabalhar em diferentes linhas  de desenvolvimento dentro de um mesmo projeto.
Cada branch pode conter uma série de commits independentes, permitindo que desenvolvedores trabalhem em diferentes funcionalidades ou correções sem interferir na branch principal, que favorece para a colaboração de desenvolvedores, já que cada um trabalha na sua prórpia branch e depois integra (merge) as mudanças.

PRINCIPAIS TIPOS DE BRANCHES 
Branch principal (MAIN/MASTER): É a linha principal de desenvolvimento onde o cógigo mais estável é mantido.

Branch de funcionalidades: Usada para desenvolver novas funcionalidades ou melhorias. É criada a aprtir da branch main e depois de finalizada suas mudanças são integradas de volta a branch principal.

Branch de correção: Usada para corrigir bugs, funciona de maneira similar a de funcionalidade mas foca em resolver problemas específicos.


                      TRABALHANDO COM BRANCHES
- Para criar uma nova branch usamos git branch nome_da_branch
- depois git checkout nome_da_branch para mudar para uma branch diferente.
(Você também pode usar git checkout -b nome_da branch para criar e mudar a nova branch com um unico comando - é a junção dos 2 passos anteriores)

git branch -l: mostra todas as branches do repositório
=begin
 git branch -l
  add_tela_contato
* add_tela_sobre
On branch add_tela_sobre
=end
git branch -d (+nome_branch ): remove a branch selecionada.
=begin
git branch -d add_tela_sobre add_tela_contato
Deleted branch add_tela_sobre (was 45a3b39).
Deleted branch add_tela_contato (was be0f2cc).
=end
git branch -m: altera o nome da branch

- E para integrar mudanças de uma branch para a outra, use git merge nome_da_branch. Esse comando aplica as mudanças da branch específica na branch atual.

PS C:\Users\Acer\Documents\OneBitCode-Ruby\Onebitcode\Curso-Git>git branch add_tela_contato          #Adiciona a nova branch
PS C:\Users\Acer\Documents\OneBitCode-Ruby\Onebitcode\Curso-Git> git branch --list
  add_tela_contato
* master                 #Lista as branchs e mostra em qual está logada
PS C:\Users\Acer\Documents\OneBitCode-Ruby\Onebitcode\Curso-Git> git checkout add_tela_contato
Switched to branch 'add_tela_contato'    #Troca para a nova branch
PS C:\Users\Acer\Documents\OneBitCode-Ruby\Onebitcode\Curso-Git> git branch --list
* add_tela_contato      #Lista as branchs e mostra que agora esta logada na nova branch

                                CONFLITO DE MERGE
=begin 
tivemos um conflito de merge 
git merge add_tela_contato
Auto-merging git.rb
CONFLICT (content): Merge conflict in git.rb
Automatic merge failed; fix conflicts and then commit the result.
<<<<<<< HEAD
* add_tela_contato      #Lista as branchs e mostra que agora esta logada na nova branch
========
* add_tela_contato      #Lista as branchs e mostra que agora esta logada na nova
  master 
>>>>>>> add_tela_contato

git status
On branch master
You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Changes to be committed:
        new file:   contact.html
        modified:   index.html
        modified:   styles.css

Unmerged paths:
  (use "git add <file>..." to mark resolution)
        both modified:   git.rb


=end
Ao dar erro na merge, precisamos editar os arquivos de forma adequada, apagar as marcações de conflito  (<<<<<< , ======= , >>>>>>>). Depois adiciona os arquivos com git add e faz o git commit normalmente.

E quando o merge é feito com sucesso retorna:

PS C:\Users\Acer\Documents\OneBitCode-Ruby\Onebitcode\Curso-Git> git checkout master 
Switched to branch 'master'
PS C:\Users\Acer\Documents\OneBitCode-Ruby\Onebitcode\Curso-Git> git merge add_tela_sobre
Updating 6f32cfe..45a3b39
Fast-forward
 about.html   | 22 ++++++++++++++++++++++
 contact.html |  3 ++-
 index.html   |  5 +++--
 3 files changed, 27 insertions(+), 3 deletions(-)
 create mode 100644 about.html   


                                  FORKS
Fork é uma cópia independente de um repositório que permite modificar o projeto sem afetar o original. No GitHub, ao criar um fork, você passa a ter uma versão própria do código, podendo editar, testar e propor mudanças. Em termos simples, é como pegar uma receita e fazer sua versão sem alterar a receita publicada.
=begin
	            Módulo URI e HTTP
          HTTPS - Protocolo de Transferência de hipertexto
É uma versão segura do HTTP, que é o principal protocolo usado
para enviar dados entre um navegador web e um site. O HTTPS
é criptografado para aumentar a segurança de dados como logins,
conta bancária, email... 

       URI (Uniform Resource Identifier) - Identificador Uniforme de Recursos
é uma sequência de caracteres utilizados para identificar um recurso da 
internet, podendo incluir um nome, local ou ambos. Em essência, serve para 
identificar alguma coisa seja ele um local, uma pessoa ou qualquer outro recurso
 Temos 2 tipos de URIs: URL e URN.

       URL (Uniform Resource Locator) - Localizador Uniforme de Recursos
É o subconjunto de uma URI, usado para indicar especificamente o local de um 
recurso, é um endereço que nos diz onde encontrar algo na web e  como chegar lá.
URLs contém um esquema (scheme) (protocolo como HTTP, HTTPS, FTP), um domínio, um caminho, e 
opcionalmente uma porta e parâmetros.

Exemplo:
https://www.exemplo.com/pagina.html
ftp://ftp.exemplo.com/arquivo.txt


       URN (Uniform Resource Names) - Nomeador Uniforme de Recursos
São designadores que servem como identificadores únicos e persistentes para recursos,
mas não fornecem informações sobre como ou onde acessá-los. Usado para nomear um 
elemento da internet sem indicar seu local.
Podemos dizer então que URN é o cpf de um pessoa e URL o endereço completo dela.

Exemplo:
 urn:isbn:0451450523  # Identifica um livro pelo ISBN, mas não diz onde encontrá-lo.

          Links e URLs
Os links e URLs não são sinônimos. Uma url é a string que permite localizar um recurso.
Já um link (short hyperlink) é um elemento HTML que permite carregar o recurso
de uma URL em um navegador. Portanto um link depende de uma url mas a url pode existir sem
um link

require "uri" 
require "net/http"

url = URI.parse("https://www.example.com") #URI.parse espera uma url para abrir o site
puts url # Retorna o dominio https://www.example.com
puts url.class  # #Retorna o protocolo URI::HTTPS
=end

require "uri" 
require "net/http" 

url = URI.parse("https://www.example.com") #URI.parse espera uma url para abrir o site

http = Net::HTTP.new(url.host, url.port) #Net é o módulo e HTTP é a classe do módulo
                                         #.new vai criar instância da classe
                                         #url.host = https://www.example.com
                                         #url.port = é a porta do protocolo que é http
http.use_ssl = (url.scheme == "https")   # verifica se vai usar https ou não

request = Net::HTTP::Get.new(url)
response = http.request(request)

if response.is_a?(Net::HTTPSuccess)

       puts "Status: #{response.code} #{response.message}"
       puts response.body
else
       puts "A requisição falhou com status #{response.code}"
end

=begin Retorna 

Status: 200 OK
<!doctype html>
<html>
<head>
    <title>Example Domain</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
    body {
        background-color: #f0f0f2;
        margin: 0;
        padding: 0;
        font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
        
    }
    div {
        width: 600px;
        margin: 5em auto;
        padding: 2em;
        background-color: #fdfdff;
        border-radius: 0.5em;
        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);
    }
    a:link, a:visited {
        color: #38488f;
        text-decoration: none;
    }
    @media (max-width: 700px) {
        div {
            margin: 0 auto;
            width: auto;
        }
    }
    </style>    
</head>

<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is for use in illustrative examples in documents. You may use this
    domain in literature without prior coordination or asking for permission.</p>
    <p><a href="https://www.iana.org/domains/example">More information...</a></p>
</div>
</body>
</html>     
=end 

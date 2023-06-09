## Desafio 2 do ***Bootcamp Cloud* AWS**

Evento promovido pela [Digital Innovation One - DIO](https://www.dio.me/en), com patrocínio da [Amazon Web Services - AWS](https://aws.amazon.com/pt/).

<div align="right">
  <img src="https://github.com/crobertocamilo/linux_servidor_apache/blob/main/assets/logo_bootcamp.webp?raw=true.webp" alt="logo bootcamp" width=20%/>
</div>

--- 
## Desafio
**Infraestrutura como código: *script* para provisionamento de um servidor *web* utilizando o Apache2**.

---
### Objetivo

Desenvolver um *script* que operacionalize a criação e configuração de um servidor *web* Linux para disponibilizar uma página HTML.

---
### Etapas para a solução:

O *script* compreende as seguintes etapas:

* Atualização dos repositórios;
* Instalação do Apache2;
* Baixar a página [index.html](https://github.com/crobertocamilo/linux_servidor_apache/blob/main/index.html) deste repositório para a máquina local num diretório **/tmp** temporário;
* Copiar a página HTML para o diretório padrão do Apache;
* Configuração para exibição da página em *http://localhost*;
* Deletar o diretório temporário.

### Implementando a solução:

Considerando que a imagem (AMI) Linux padrão na AWS utiliza o gerenciador de pacotes **yum**, ao invés do **apt**, são apresentados dois *scripts* para implementar a solução:

* [script_ubuntu.sh](https://github.com/crobertocamilo/linux_servidor_apache/blob/main/script_ubuntu.sh) para Ubuntu e outras distribuições baseadas no Debian;
* [scrip_aws.sh](https://github.com/crobertocamilo/linux_servidor_apache/blob/main/script_aws.sh) para distribuições que utilizam o yum como gerenciador de pacote, e especificamente, a distro utilizada na AMI Amazon Linux, da AWS.

Para executar o *script.sh* adequado:
* Copie o arquivo script.sh para máquina;
* Dê permissão de execução ao *script*:
  
  `sudo chmod +x script.sh`
* Execute o *script*:
  
  `./script.sh`

---
### Lançando uma instância EC2 com o servidor apache já instalado

Ao lançar uma máquina no EC2 é possível incluir um *script* de personalização da instância. 

Para criar uma **instância EC2 que já realize a instalação e configuração do httpd (Apache)** e disponibilize a página HTML ao iniciar, copie o [script_aws.sh](https://github.com/crobertocamilo/linux_servidor_apache/blob/main/script_aws.sh) para janela a **Advanced details**, na seção **USER DATA** da interface de configuração da instância (no console da AWS, é a última seção da página de configuração da instância a ser criada). 

Neste caso, seu servidor *web* já estará *online* após a inicialização da máquina. Basta acessar a página diretamente pelo IPv4 público da instância!

<div align="center">
  <img src="https://github.com/crobertocamilo/linux_servidor_apache/blob/main/assets/pagina_online_aws.png?raw=true" alt="Pagina html online numa instancia EC2" width=100%/>
</div>

<div align="center">
Página HTML personalizada sendo exibida a partir do servidor web criado numa instância do EC2.
</div>



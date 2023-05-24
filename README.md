## Desafio 2 do ***Bootcamp Cloud* AWS**

Evento promovido pela [Digital Innovation One - DIO](https://www.dio.me/en), com patrocínio da [Amazon Web Services - AWS](https://aws.amazon.com/pt/).

<div align="right">
  <img src="https://github.com/crobertocamilo/linux_servidor_apache/blob/main/assets/logo_bootcamp.png?raw=true.webp" alt="logo bootcamp" width=20%/>
</div>

--- 
## Desafio
**Infraestrutura como código: *script* para provisionamento de um servidor *web* utilizando o Apache2**.

---
### Objetivo

Desenvolver um *script* que operacionalize a criação e configuração de um servidor *web* linux para disponibilizar uma página HTML.

---
### Etapas para a solução:

O *script* compreende as seguinte etapas:

* Atualização dos repositórios;
* Instalação do Apache2;
* Baixar a página index.html deste repositório para a máquina local num diretório **tmp/** temporário;
* Copiar a página html para o diretório padrão do Apache;
* Configuração para exibição da página em *http://localhost*;
* Deletar a pasta temporária.

### Implementando a solução

Considerando que imagem linux padrão na AWS utiliza o gerenciador de pacotes **yum**, ao invés do **apt**, são apresentados dois *scripts* para implementar a solução:

* [script_ubuntu](https://github.com/crobertocamilo/linux_servidor_apache/blob/main/script_ubuntu.sh) para Ubuntu e outras distribuições baseadas no Debian;
* [scrip_aws.sh](https://github.com/crobertocamilo/linux_servidor_apache/blob/main/script_aws.sh) para distribuições que utilizam o yum como gerenciador de pacote, e especificamente a distro utilizada na AMI Amazon Linux, da AWS.

Para executar o *script.sh* adequado:
* Copie o arquivo script.sh para máquina;
* Dê permissão de execução ao *script*:
  
  `sudo chmod +x script.sh`
* Execute o *script*:
  
  `./script.sh`



# gerard-web-deploy

Repositório gerado automaticamente para publicar a versão preliminar do
protótipo web do Gérard (backend Java + frontend estático já buildado).

**Não é o repositório de código-fonte do projeto.** O código-fonte,
histórico e desenvolvimento continuam em
https://github.com/anaemilia/Gerard — este repositório só contém os
artefatos de build já existentes lá (`build/classes`, `lib/*.jar`,
`web-poc/dist`) e um `Dockerfile` para hospedagem, sem nenhuma alteração
de código, arquitetura ou dependências.

Execução local equivalente:

```
java -cp "build/classes:lib/*" gerard.infraestrutura.web.ServidorPrototipoWeb
```

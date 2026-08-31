FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Artefatos de build ja existentes do projeto Gerard (anaemilia/Gerard).
# Nenhum arquivo de codigo-fonte e alterado; apenas os binarios ja compilados
# e o frontend ja buildado (web-poc/dist) sao copiados para a imagem.
COPY app/build ./build
COPY app/lib ./lib
COPY app/web-poc ./web-poc

EXPOSE 8080

# Mesmo ponto de entrada e classpath do comando de execucao local:
#   java -cp "build\classes;lib\*" gerard.infraestrutura.web.ServidorPrototipoWeb
# (separador ";" -> ":" so por ser Linux; a porta usa o argumento opcional
# ja suportado pelo main(), lendo a variavel PORT da plataforma de hospedagem).
CMD ["sh", "-c", "java -cp build/classes:lib/* gerard.infraestrutura.web.ServidorPrototipoWeb ${PORT:-8080}"]

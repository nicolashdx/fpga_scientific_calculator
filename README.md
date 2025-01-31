# Calculadora Científica FPGA - VHDL

[Apresentação](https://docs.google.com/presentation/d/e/2PACX-1vQafuoJSYMYlyhdVtxxtEMY4ZAB_8_T9ilydgadJg5n-mJ4pe5nwp9pKuyHts4smLtcndzDg0zI0W74/pub?start=true&loop=true&delayms=60000)

## **Descrição do Projeto**
Este projeto é uma calculadora científica implementada em VHDL, utilizando um FPGA. A interface consiste em um teclado matricial para entrada de dados e um display LCD 16x2 para exibição de operações e resultados. O projeto visa integrar conceitos de sistemas digitais com aplicações matemáticas avançadas.

## **Premissas e Requisitos**
- **Hardware**:
  - FPGA com suporte a VHDL.
  - Display LCD 16x2 compatível.
  - Teclado matricial 4x3.
  - DE2 [EP2C35F672C6N]

- **Funcionalidades**:
  - Operações básicas: soma, subtração, multiplicação, divisão.
  - Funções científicas: seno, cosseno, logaritmo.
  - Exibição de resultados no display.

## **Planejamento e Divisão de Trabalho**
### **Cronograma**
- **Semana 1**:
  - Estudo de caso.
  - Definição de requisitos e materiais.
- **Semana 2**:
  - Definição do projeto.
  - Desenvolvimento de módulos individuais.
  - Simulações iniciais.
- **Semana 3**:
  - Integração dos módulos.
  - Testes e depuração.
  - Finalização da documentação.

### **Responsabilidades**
- **Nicolas**:
  - Módulo do display LCD 16x2.
  - Configuração para exibição.
  - Integração e documentação final.
- **Pedro**:
  - Módulo do teclado matricial.
  - Decodificação de entradas.
  - Debouncer
  - Integração e documentação final.
- **Igor**:
  - Módulo da Unidade de Operações Matemáticas.
  - Integração e documentação final.

## **Instruções para Uso**
1. **Montagem**:
   - Conecte o teclado e o display ao FPGA.
   - Faça upload do código sintetizado para o FPGA.

2. **Operação**:
   - Use o teclado para inserir os números e selecionar as operações.
   - O resultado será exibido no display LCD.

## **Testes e Validação**
Os módulos foram compilados no software Quartus Prime 13, simulados no ModelSim e testados diretamente no hardware para garantir funcionalidade.

## **Contribuições**
Este projeto foi desenvolvido por:
- Nicolas Henrique: Módulo do display LCD 16x2, integração e documentação.
- Igor: Módulo da Unidade de Operações Matemáticas, integração e documentação.
- Pedro: Teclado matricial, debouncer, decodificação, integração e documentação

---

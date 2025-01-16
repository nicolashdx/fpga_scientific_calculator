# Calculadora Científica FPGA - VHDL

## **Descrição do Projeto**
Este projeto é uma calculadora científica implementada em VHDL, utilizando um FPGA. A interface consiste em um teclado matricial para entrada de dados e um display LCD 16x2 para exibição de operações e resultados. O projeto visa integrar conceitos de sistemas digitais com aplicações matemáticas avançadas.

## **Premissas e Requisitos**
- **Hardware**:
  - FPGA com suporte a VHDL.
  - Display LCD 16x2 compatível.
  - Teclado matricial 4x4.

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
  - Módulo da Unidade de Operação Matemática (UOM).
- **Pedro**:
  - Módulo do teclado matricial.
  - Decodificação de entradas.
- **Igor**:
  - Módulo do display LCD 16x2.
  - Configuração para exibição.
- **Todos**:
  - Integração e documentação final.

## **Instruções para Uso**
1. **Montagem**:
   - Conecte o teclado e o display ao FPGA.
   - Faça upload do código sintetizado para o FPGA.

2. **Operação**:
   - Use o teclado para inserir os números e selecionar as operações.
   - O resultado será exibido no display LCD.

## **Testes e Validação**
Os módulos foram compilados no software Quartus Prime 20.1, simulados no ModelSim e testados diretamente no hardware para garantir funcionalidade.

## **Contribuições**
Este projeto foi desenvolvido por:
- Nicolas Henrique: UOM, integração e documentação.
- Igor: Teclado matricial e decodificação.
- Pedro: Display LCD e simulação.

---

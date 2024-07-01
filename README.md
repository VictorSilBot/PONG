# Pong Game

## Descrição

Este projeto é uma implementação do clássico jogo Pong, escrito em C. Adaptado para um compilador específico, o jogo oferece modos de jogo single player e multiplayer, permitindo que você jogue contra a CPU ou outro jogador. O objetivo é marcar três gols antes do adversário para vencer a partida.

## Funcionalidades

- **Modos de Jogo:**
  - **Single Player:** Jogue contra a CPU.
  - **Multiplayer:** Jogue contra outro jogador no mesmo teclado.
  - **Créditos:** Veja informações sobre os desenvolvedores do jogo.
  - **Quit:** Encerre o jogo.

- **Interface de Jogo:**
  - Interface textual simples e intuitiva.
  - Exibição do placar em tempo real.
  - Movimentação das barras dos jogadores e da bola.

## Controles

### Single Player
- **Jogador 1:**
  - `W` - Mover barra para cima
  - `S` - Mover barra para baixo

### Multiplayer
- **Jogador 1:**
  - `W` - Mover barra para cima
  - `S` - Mover barra para baixo
- **Jogador 2:**
  - `P` - Mover barra para cima
  - `L` - Mover barra para baixo

## Como Jogar

1. Clone o repositório:
    ```sh
    git clone https://github.com/VictorSilBot/PONG
    ```
2. Execute o [Processador ICMC](https://github.com/simoesusp/Processador-ICMC)

3. No menu principal, selecione uma das opções:
   - `1 - SINGLE PLAYER`
   - `2 - MULTIPLAYER`
   - `3 - CREDITOS`
   - `4 - QUIT`

4. Jogue e divirta-se! O primeiro jogador a marcar 3 gols vence a partida.

## Estrutura do Código

- **Variáveis Globais:** Variáveis que mantêm o estado do jogo, incluindo o placar, posições dos jogadores, CPU e bola.
- **Funções de Desenho:** Funções responsáveis por desenhar a borda, os jogadores, a CPU, a bola e o placar.
- **Lógica do Jogo:** Funções que controlam a lógica principal do jogo, incluindo a movimentação da bola, detecção de colisões e entradas do usuário.

## Créditos

- **Victor Silva Botelho**
- **Matheus D'Afonseca e Silva**
- **Joao Victor Andrade dos Santos**

---

Sinta-se à vontade para contribuir com melhorias ou relatar problemas. Divirta-se jogando Pong!

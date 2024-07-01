#include "std/io.h" //lib. padrao

#define V 23 // tamanho vertical
#define H 37 // tamanho horizontal

// Declarando funcoes

void desenho_da_BORDA();
void desenhar_placar();
void desenho_do_JOGADOR();
void desenho_da_CPU();
void desenho_da_BOLA();
void desenha_TODO_O_MAPA();
void entrada();
void gotoxy();

// Loop principal

void loop_de_desenhar();
void loop_do_jogo();

// Variaveis Globais

int gol_Jogador;// registra os gols do jogador
int gol_CPU; // registra os gols da IA


char mapa[V][H]; // declarando a matriz mapa


int jogador_inicio; // começo e fim da barra do jogador
int jogador_fim;


int cpu_inicio; // começo e fim da barra da IA
int cpu_fim;


int bolaY;  // coordenadas atuais da bola 
int bolaX;

int bolaX_antiga; // coordenadas antigas da bola
int bolaY_antiga; 


int modo_de_jogo; // muda a acao da IA

// Movimentaçao

int modx;

int mody;

int mod_CPU;

char placar_jogador[6];
char placar_ia[6];

int main()
{
    placar_jogador[0] = '0'; // inicializa o placar com 0
    placar_ia[0] = '0'; // inicializa o placar com 0

    gol_Jogador = 0; // inicializa o contador de gols com 0
    gol_CPU = 0; // inicializa o contador de gols com 0

    jogador_inicio = (V/2)-2; // Jogador começa na metade da altura do campo
    jogador_fim = (V/2)+2;

    cpu_inicio = (V/2)-2; // CPU começa na metade da altura do campo
    cpu_fim = (V/2)+2;

    bolaY = V/2; // Bola começa na metade da altura do campo
    bolaX = H/2; // Bola começa na metade do comprimento do campo

    modo_de_jogo = 0;

    modx = -1;
    mody = -1;
    mod_CPU = -1;
	
	prints("  _______  _______  ___    __  _______ \n");
    prints(" |   _   ||       ||   |  |  ||       |\n");
    prints(" |  | |  ||   _   ||    | |  ||   ____|\n");
    prints(" |  |_|  ||  | |  ||     ||  ||  | ___ \n");
    prints(" |    ___||  |_|  ||  ||     ||  ||   |\n");
    prints(" |   |    |       ||  | |    ||  |_|  |\n");
    prints(" |___|    |_______||__|  |___||_______|\n\n");
 

    prints("    DIGITE O VALOR E APERTE <ENTER>\n\n");
    prints("          1 - SINGLE PLAYER        \n");
    prints("          2 - MULTIPLAYER          \n");
    prints("          3 - CREDITOS             \n");
    prints("          4 - QUIT                 \n");

    char id;
    id = getc() - '0';
    getc();

        if(id == 1){
            loop_de_desenhar();
            loop_do_jogo();

            prints("\n \n");

            if (gol_Jogador == 3){ // 3 Gols pra acabar o jogo

                gotoxy();
                prints("           -----------------\n");
                prints("           |               |\n");
                prints("           | PLACAR: ");
                prints(placar_jogador);
                prints(" x ");
                prints(placar_ia);
                prints(" |\n");
                prints("           |               |\n");
                prints("           -----------------\n");                
                prints("\n\n                VICTORY\n\n");
            }

            if (gol_CPU == 3){ // 3 Gols pra acabar o jogo

                gotoxy();
                prints("           -----------------\n");
                prints("           |               |\n");
                prints("           | PLACAR: ");
                prints(placar_jogador);
                prints(" x ");
                prints(placar_ia);
                prints(" |\n");
                prints("           |               |\n");
                prints("           -----------------\n");                
                prints("\n\n               GAME OVER\n\n");
            }
        }

        if(id == 2){
            modo_de_jogo = 1;
            loop_de_desenhar();
            loop_do_jogo();

            prints("\n \n");

            if (gol_Jogador == 3){ // 3 Gols pra acabar o jogo

                gotoxy();
                prints("           -----------------\n");
                prints("           |               |\n");
                prints("           | PLACAR: ");
                prints(placar_jogador);
                prints(" x ");
                prints(placar_ia);
                prints(" |\n");
                prints("           |               |\n");
                prints("           -----------------\n");
                prints("\n\n            JOGADOR 1 VENCE!\n\n");
            }

            if (gol_CPU == 3){ // 3 Gols pra acabar o jogo

                gotoxy();
                prints("           -----------------\n");
                prints("           |               |\n");
                prints("           | PLACAR: ");
                prints(placar_jogador);
                prints(" x ");
                prints(placar_ia);
                prints(" |\n");
                prints("           |               |\n");
                prints("           -----------------\n");                
                prints("\n\n            JOGADOR 2 VENCE!\n\n");
            }


        }
        if(id == 3){
            prints("\n");
            prints("           Autores do Jogo:\n\n");
            prints("         Victor Silva Botelho\n\n");
            prints("      Matheus D'Afonseca e Silva\n\n");
            prints("    Joao Victor Andrade dos Santos\n\n");
        }
        if(id == 4){
            prints("\n\n          Obrigado por jogar!");
        }

        if(id < 1 || id > 4){
            prints("\nDigite um valor valido!\n");
        }
return 0;
}

void loop_de_desenhar()
{
    // chama todas as funcoes de desenhar, menos a funcao de desenhar todo o mapa

	desenho_da_BORDA();
	desenho_do_JOGADOR();
	desenho_da_CPU();
	desenho_da_BOLA();
}

void desenho_da_BORDA()
{
	int i;
    int j;

	for (i = 0; i < V; i++) {
        for (j = 0; j < H; j++) {
            if (i == 0) {
                if (j == 0)
                    mapa[i][j] = '.';
                else if (j == H - 1)
                    mapa[i][j] = '.';
                else
                    mapa[i][j] = '_';
            } else if (i == V - 1) {
                if (j == 0)
                    mapa[i][j] = '.';
                else if (j == H - 1)
                    mapa[i][j] = '.';
                else
                    mapa[i][j] = '_';
            } else {
                if (j == 0 || j == H - 1)
                    mapa[i][j] = '|';
                else
                    mapa[i][j] = ' ';
            }
        }
    }
}

void desenho_do_JOGADOR()
{
    // NESSA FUNCAO NAO PODE HAVER PRINTs

	int i;
    int j;

	for (i = jogador_inicio; i < jogador_fim; i++)
	{
        if(i < V - 1)
            mapa[i][3] = '|';
	}
}

void desenho_da_CPU()
{
    // NESSA FUNCAO NAO PODE HAVER PRINTs

	int i;
    int j;

	for (i = cpu_inicio; i < cpu_fim; i++)
	{
        if(i < V - 1)
            mapa[i][H - 4] = '|';
	}
}

void desenho_da_BOLA()
{
	mapa[bolaY][bolaX] = 'o';
}

void desenhar_placar(){
	// DESENHANDO O PLACAR

	prints("           -----------------\n");
    prints("           |               |\n");
    prints("           | PLACAR: ");
    prints(placar_jogador);
    prints(" x ");
    prints(placar_ia);
    prints(" |\n");
    prints("           |               |\n");
    prints("           -----------------\n");

}

void loop_do_jogo() // Loop principal
{
    sfill(0);

    while(gol_CPU < 3 && gol_Jogador < 3) 
    {    
        __cursor = 0;
        loop_de_desenhar(); // nao da pra tirar daqui
        desenhar_placar();
        desenha_TODO_O_MAPA(); // nao da pra tirar daqui
        entrada(); // nao da pra tirar daqui
    }
}

void desenha_TODO_O_MAPA()
{
	int i;
    int j;

	for (i = 0; i < V; i++)
	{

		for (j = 0; j < H; j++)
		{
			printc(mapa[i][j]);
		}

		prints("\n");
	}
}

void entrada()
{

	int i;
	char tecla;

	if (bolaY == 1 || bolaY == V - 2){ // Muda a direção da bola ao bater nas paredes
		mody = mody * (-1);
	}

	if (bolaX == 1){ // GOL da CPU

		gol_CPU = gol_CPU + 1;
        
        itos(gol_CPU, placar_ia, 10); // funcao itos para fazer o placar funcionar

		bolaY = V/2; // Bola volta pra metade do campo
        bolaX = H/2;

        mody = mody * (-1); // Muda a direção e o sentido da bola ao retornar ao meio
        modx = modx * (-1); // Muda a direção e o sentido da bola ao retornar ao meio

        /*
        gotoxy(); // Usar se conseguir fazer o mapa nao ser reescrito o tempo todo, tirando o desenhar_placar do loop do jogo
        desenhar_placar();
        desenha_TODO_O_MAPA();
        */
	}

	if (bolaX == H - 2){ // GOL do Jogador

		gol_Jogador = gol_Jogador + 1;

        itos(gol_Jogador, placar_jogador, 10);

		bolaY = V/2; // Bola volta pra metade do campo
        bolaX = H/2;

        mody = mody * (-1); // Muda a direção e o sentido da bola ao retornar ao meio
        modx = modx * (-1); // Muda a direção e o sentido da bola ao retornar ao meio

        /*
        gotoxy(); // Usar se conseguir fazer o mapa nao ser reescrito o tempo todo, tirando o desenhar_placar do loop do jogo
        desenhar_placar();
        desenha_TODO_O_MAPA();
        */
    }

	if (bolaX == 4){ // ver se atingiu a raquete do jogador

		for (i = (jogador_inicio); i <= (jogador_fim); i++){

			if (i == (bolaY)){ // atingiu a raquete do jogador

				modx = modx * (-1);
			}
		}
	}

	if (bolaX == H-5){ // ver se atingiu a raquete da IA

		for (i = (cpu_inicio); i <= (cpu_fim); i++){

			if (i == (bolaY)){ // atingiu a raquete da IA

				modx = modx * (-1);
			}
		}
	}

	if (cpu_inicio == 1 || cpu_fim == V-1){ // modifica a posicao da barrinha da cpu

		mod_CPU = mod_CPU * (-1);

	}

	if (gol_Jogador < 3 && gol_CPU < 3) // Modifica a posicao da bola
	{

        mapa[bolaY_antiga][bolaX_antiga] = ' '; // Desenha espaço em branco na posição anterior
        
        // atualiza a posicao da bola

        bolaX_antiga = bolaX;
        bolaY_antiga = bolaY;

		bolaX = bolaX + (modx);
		bolaY = bolaY + (mody);

        /*
        int res;
        res = bolaX * bolaY;
        __cursor = res;
        printc('o');
        */


		// O PROXIMO IF CONTROLA A IA NA VERSAO MULTIPLAYER


		if(!modo_de_jogo){ // se for single player => modo_de_jogo = 1 => if sera falso

		// raquete da CPU:

            cpu_inicio = cpu_inicio + (mod_CPU);
            cpu_fim = cpu_fim + (mod_CPU);
		}


		// raquete do JOGADOR:
        int auxiliar;
        auxiliar = _inchar();
        int aux;
        aux = (auxiliar - 255);
        int w;
        w = auxiliar - 119;

		if (aux) 
		{

			tecla = auxiliar;

			if (tecla == 'w' || tecla == 'W') // evita de nao detectar se estiver com CAPS LOCK
			{
                
				if (jogador_inicio != 1)
				{

					jogador_inicio = jogador_inicio - 1;
					jogador_fim = jogador_fim - 1;
				}
			}

			if (tecla == 's' || tecla == 'S') // evita de nao detectar se estiver com CAPS LOCK
			{

				if (jogador_inicio != V - 5)
				{

					jogador_inicio = jogador_inicio + 1;
					jogador_fim = jogador_fim + 1;
				}
			}

			// OS PROXIMOS 2 IFs SAO PARA A VERSAO 2 JOGADORES, CONTROLANDO A BARRINHA DA DIREITA COM P e L


            // se for single player => modo_de_jogo = 1 => if sera verdadeiro
            if (tecla == 'p' || tecla == 'P') // subir barra da direita
            {
                if (cpu_inicio != 1)
                {
                     if (modo_de_jogo == 1){
                        cpu_inicio = cpu_inicio - 1;
                        cpu_fim = cpu_fim - 1;
                    }
                }
            }

            if (tecla == 'l' || tecla == 'L') // descer barra da direita
            {
                if (cpu_inicio != V - 5)
                {
                    if (modo_de_jogo == 1){
                        cpu_inicio = cpu_inicio + 1;
                        cpu_fim = cpu_fim + 1;
                    }
                }
            }
		}
	}
}

void gotoxy()
{
	sfill(0);
	__cursor = 0;
}

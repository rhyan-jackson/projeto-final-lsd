
* Problema
Preciso implementar o tempo de uma forma decrescente, o usuário precisa ter a possibilidade de decrementar e incrementar o tempo enquanto ele corre.

- START  : tenho a possibilidade de selecionar o tempo de cozimento, tempo de idle, e temperatura e dar start logo depois.
- IDLE   : enquanto está em IDLE, posso incr./decr. ainda a temperatura, o tempo de cozimento, e o tempo de idle.
- COOK   : quero ter a possibilidade de selecionar uma certa posição no sw e decrementar e incrementar o tempo e temperatura, além do tempo de idle.
- FINISH : voltar ao tempo que foi colocado no START.

* Perguntas para solução:
    1. quem será responsável por armazenar o tempo atual e colocar nos lugares certos e na hora certa?
        R: 
    2. quem será responsável por armazenar a hora o tempo predefinido em start e finish?


- No start, com os switches, selecionamos se vamos alterar o tempo de IDLE ou tempo de COOK. Selecionando, o que é o incrementar e decrementar? É justamente entregar os sinais dos keys pro timer, e o próprio timer vai iniciar as variáveis de tempo de cada estado e fazer o trabalho de decrementar e incrementar nesse estado START.

- Logo depois, ele vai pro estado de IDLE, e automaticamente pela varíavel da FSM, o timer começa a contar e ainda assim os keys e switches estarão disponíveis pra incrementar ou decrementar o tempo de IDLE(enquanto corre) e o tempo de COOK(que virá logo no próximo estado).

- No estado de COOK, a mesma história, pode-se alterar o tempo de IDLE, o tempo de COOK enquanto ele corre.
    PROBLEMA: Qual será o tempo de IDLE neste momento?
    R: Dentro do timer haverá uma variável de armazenamento que armazena o tempo predefinido no estado START e FINISH.

- O FINISH é o mesmo que o start, só que tem leds piscando.
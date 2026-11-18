programa
{
    funcao inicio()
    {
        // A) Desenvolva uma rotina onde números de 10 a 30 são multiplicados por um índice inserido pelo usuário (entre 2-8).
        inteiro indice
        inteiro tamanho = 21 // De 10 até 30 inclusive, temos 21 números (30 - 10 + 1)
        
        faca
        {
            escreva("Digite um índice entre 2 e 8: ")
            leia(indice)
            
            se (indice < 2 ou indice > 8)
            {
                escreva("Índice inválido! Deve ser um valor entre 2 e 8.\n")
            }
        }
        enquanto (indice < 2 ou indice > 8)

        // B) Os produtos das multiplicações devem ser inseridos em um vetor.
        inteiro produtos[21]
        inteiro i = 0
        inteiro num = 10

        enquanto (num <= 30)
        {
            produtos[i] = num * indice
            num++
            i++
        }

        escreva("\n----------------------------------------\n")

        // C) Imprima o vetor na tela do último ao primeiro índice.
        escreva("C) Vetor impresso do último ao primeiro índice:\n")
        para (inteiro j = tamanho - 1; j >= 0; j--)
        {
            escreva("Posição [", j, "] = ", produtos[j], "\n")
        }

        escreva("\n----------------------------------------\n")

        // D) Calcule o Somatório dos Produtos.
        inteiro somatorio = 0
        para (inteiro j = 0; j < tamanho; j++)
        {
            somatorio = somatorio + produtos[j]
        }
        escreva("D) Somatório dos produtos: ", somatorio, "\n")

        // E) Apresente o Maior Produto.
        inteiro maior = produtos[0]
        para (inteiro j = 1; j < tamanho; j++)
        {
            se (produtos[j] > maior)
            {
                maior = produtos[j]
            }
        }
        escreva("E) Maior produto: ", maior, "\n")

        // F) Apresente o Menor Produto.
        inteiro menor = produtos[0]
        para (inteiro j = 1; j < tamanho; j++)
        {
            se (produtos[j] < menor)
            {
                menor = produtos[j]
            }
        }
        escreva("F) Menor produto: ", menor, "\n")

        // G) Apresente a Média dos números (dividindo por 21.0 para forçar o resultado real)
        real media
        media = somatorio / 21.0
        escreva("G) Média dos produtos: ", media, "\n")
    }
}
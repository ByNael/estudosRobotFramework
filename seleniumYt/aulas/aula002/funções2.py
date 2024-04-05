def soma(numero_1, numero_2):
    return numero_1+numero_2

def imprime_relatorio(nome, cpf, telefone):
    return f"""
    Relátorio parciar

    {nome}, portador do cpf {cpf}, que utiliza o numero {telefone}

    Está oficialmente de férias

    Ass. Direção
    """

print(imprime_relatorio(
    nome= 'Natanael Lino',
    cpf=12345654,
    telefone=123124123
    )
)
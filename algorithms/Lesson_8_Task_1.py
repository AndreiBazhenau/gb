# 1. На улице встретились N друзей. Каждый пожал руку всем остальным друзьям
# (по одному разу). Сколько рукопожатий было?
# Примечание. Решите задачу при помощи построения графа.

N = int(input('Введите количество дрзей для расчёта количества рукопожатий: '))


def shake_hands(N):
    if N < 2:
        return f'0 рукопожатий'

    # кол-во вершин vertex = кол-во друзей
    graph_vertex = [_ for _ in range(N)]
    # print(graph_vertex)

    # кол-во граней edges = кол-во рукопожатий
    graph_edges = []

    # перебор по списку друзей
    for i in range(len(graph_vertex)):
        current_vertex = graph_vertex.pop(0)
        # print('current_vertex =', current_vertex, 'graph_vertex =', graph_vertex)

        # перебор по оставшемуся списку друзей
        for vertex in graph_vertex:
            # print(vertex)
            # добавление в список рукопожатий между текущим и следующим
            graph_edges.append((current_vertex, vertex))
            # print('graph_edges =', graph_edges)

    return f'Количество рукопжатий {N} друзей = {len(graph_edges)}'


print(shake_hands(N))

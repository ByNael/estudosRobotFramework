x = {1,2,3}
y = {3,4,5}

x.union(y)
# {1,2,3,4,5}

x.diferrence(y)
# {1,2}

x.discard(1)
# {2,3}

x.intersection(y)
# {3}

x.update(y)
# {1,2,3,4,5}

x.pop()
# {2,3}
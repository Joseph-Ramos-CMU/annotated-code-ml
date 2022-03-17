# from python_graphs import control_flow
# from python_graphs import control_flow_graphviz
# from python_graphs import program_graph
# from python_graphs import program_graph_graphviz

def test_function_1(x):
    z = 1
    return x + y + z

def test_function_2(x):
    z = 20
    return x + y

def main():
    print ("Hello world")
    path1 = 'test1-program-graph.png'
    path2 = 'test2-control-graph.png'
    path3 = 'test3-data-graph.png'

    # programGraph = program_graph.get_program_graph(test_function_1)
    # program_graph_graphviz.render(programGraph, path=path1)

    # contrlGraph = control_flow.get_control_flow_graph(test_function_1)
    # control_flow_graphviz.render(contrlGraph, path=path2)

    # # dataFlow = data_flow.
    # print("contrlGraph: " + str(contrlGraph))
    # print("programGraph: " + str(programGraph))
    if False:
        print ("Running test function")
        test_function_1(2)

if __name__ == "__main__":
    main()
